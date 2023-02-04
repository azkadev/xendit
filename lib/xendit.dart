// ignore_for_file: non_constant_identifier_names, empty_catches, unnecessary_brace_in_string_interps

library xendit;

import 'dart:convert';

import 'package:galaxeus_lib/extension/regexp.dart';
import 'package:http/http.dart';

part 'src/object/balance.dart';
part 'src/object/expire_invoice.dart';
part 'src/object/get_invoice.dart';
part 'src/object/invoice.dart';
part 'src/object/payout.dart';
part 'src/object/xenplatform_account.dart';
part 'src/object/xentplatform_fee_rule.dart';
part 'src/object/xentplatform_transfer.dart';

/// xendit helo world heo gais
class Xendit {
  late String api_key;

  /// xendit helo world heo gais
  Xendit({required String apiKey}) {
    api_key = apiKey;
  }

  /// request method support all update
  Future<Map> request({
    /// GET https://api.xendit.co/v2/invoices/{invoice_id}
    required String endpoint,
    Map? parameters,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiKey,
  }) async {
    parameters ??= {};
    headers ??= {};
    apiKey ??= api_key; 
    String methodRequest  = (RegExp(r"^(get|post|patch)([ ]+)?", caseSensitive: false).stringMatch(endpoint) ?? "get").toLowerCase();
    String url = "https://api.xendit.co";
    endpoint = endpoint.replaceAll(RegExp(r"^(get|post|patch)([ ]+)?", caseSensitive: false), "");

    Map<String, String> headersOption = {
      "Authorization": "Basic ${base64.encode(utf8.encode("${apiKey}:"))}",
      "Content-Type": 'application/json',
      ...headers,
    };
    Map json_respond = {
      "@type": "ok",
      "status_code": 200,
      "status_bool": true,
      "result": {},
    };
    late Response result;
    Uri urlApi = Uri.parse(url).replace(queryParameters: queryParameters);
    if (methodRequest == "get") {
      result = await get(urlApi, headers: headersOption);
    } else if (methodRequest == "post") {
      result = await post(urlApi, headers: headersOption, body: json.encode(parameters));
    } else if (methodRequest == "patch") {
      result = await patch(urlApi, headers: headersOption, body: json.encode(parameters));
    } else {
      result = await get(urlApi, headers: headersOption);
    }
    Map body = {
      "@type": "ok",
    };
    if (result.statusCode != 200) {
      body["@type"] = "error";
    }
    try {
      body.addAll(json.decode(result.body));
    } catch (e) {
      body.addAll({"message": "${e}"});
    }
    return body;
  }

  /// invoices
  Future<CreateInvoiceResponse> createInvoices({
    String forUserId = "",
    String withFeeRule = "",
    required String external_id,
    required int amount,
    String? description,
    String? payer_email,
    Map? customer,
    Map? customer_notification_preference,
    int? invoice_duration,
    String? success_redirect_url,
    String? failure_redirect_url,
    List<String>? payment_methods,
    String? currency,
    bool? fixed_va,
    String? callback_virtual_account_id,
    String? mid_label,
    String? reminder_time_unit,
    int? reminder_time,
    String? locale,
    List? items,
    List? fees,
    bool? should_authenticate_credit_card,
  }) async {
    late Map jsonData = {
      "external_id": external_id,
      "amount": amount,
      "description": description,
      "payer_email": payer_email,
      "customer": customer,
      "customer_notification_preference": customer_notification_preference,
      "invoice_duration": invoice_duration,
      "success_redirect_url": success_redirect_url,
      "failure_redirect_url": failure_redirect_url,
      "payment_methods": payment_methods,
      "currency": currency,
      "fixed_va": fixed_va,
      "callback_virtual_account_id": callback_virtual_account_id,
      "mid_label": mid_label,
      "reminder_time_unit": reminder_time_unit,
      "reminder_time": reminder_time,
      "locale": locale,
      "items": items,
      "fees": fees,
      "should_authenticate_credit_card": should_authenticate_credit_card,
    };
    jsonData.removeValueNulls();
    Map res = await request( 
      endpoint: "POST https://api.xendit.co/v2/invoices",
      headers: {
        "for-user-id": forUserId,
        "with-fee-rule": withFeeRule,
      }, 
      parameters: jsonData,
    );

    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return CreateInvoiceResponse(res.cast<String, dynamic>());
  }

  /// mengambil invoice dari id
  Future<GetInvoiceResponse> getInvoicesById({
    String forUserId = "",
    required String invoiceId,
  }) async {
    Map res = await request(
      // "v2/invoices/$invoiceId",
      endpoint: "GET https://api.xendit.co/v2/invoices/${invoiceId}",
      headers: {
        "for-user-id": forUserId,
      },
      //
    );
    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return GetInvoiceResponse(res.cast<String, dynamic>());
  }

  /// mengambil invoice dari external id
  Future<Map> getInvoicesByExternalId({
    String forUserId = "",
    required String external_id,
  }) async {
    return await request(
      // "v2/invoices", 
      endpoint: "GET https://api.xendit.co/v2/invoices",
      headers: {
        "for-user-id": forUserId,
      },
      //
      queryParameters: {
        "external_id": external_id,
      },
    );
  }

  /// untuk mengambil invoices
  Future<Map> getsInvoices({
    String forUserId = "",
    required String invoiceId,
  }) async {
    Map<String, String> jsonData = {};
    jsonData.removeValueNulls();
    return await request( 
      endpoint: "GET https://api.xendit.co/v2/invoices/${invoiceId}",
      headers: {
        "for-user-id": forUserId,
      },
     
      queryParameters: jsonData,
    );
  }

  /// untuk membuat invoice expired
  Future<ExpireInvoiceResponse> expireInvoices({String forUserId = "", required String invoiceId}) async {
    Map res = await request(
      endpoint: "POST https://api.xendit.co/invoices/${invoiceId}/expire!",
      headers: {
        "for-user-id": forUserId,
      },
     
    );
    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return ExpireInvoiceResponse(res.cast<String, dynamic>());
  }

  /// jika anda ingin menarik uang anda bisa menggunakan ini
  Future<PayoutResponse> createPayout({
    String forUserId = "",
    required String external_id,
    required int amount,
    required String email,
  }) async {
    Map res = await request(
      "payouts",
      headers: {
        "for-user-id": forUserId,
      },
     
      parameters: {
        "external_id": external_id,
        "amount": amount,
        "email": email,
      },
    );

    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return PayoutResponse(res.cast<String, dynamic>());
  }

  /// gunakan ini agar bisa menarik uang
  Future<PayoutResponse> getPayout({
    String forUserId = "",
    required String id,
  }) async {
    Map res = await request(
      "payouts/$id",
      headers: {
        "for-user-id": forUserId,
      },
     
    );
    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return PayoutResponse(res.cast<String, dynamic>());
  }

  /// ddd
  Future<VoidPayoutResponse> voidPayout({
    String forUserId = "",
    required String id,
  }) async {
    Map res = await request(
      "payouts/$id/void",
      headers: {
        "for-user-id": forUserId,
      },
     
    );
    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return VoidPayoutResponse(res.cast<String, dynamic>());
  }

  /// bikin akun untuk xentplatform
  Future<XenPlatFormAccount> createAccount({
    required String email,
    String type = "OWNED",
    required String business_name,
  }) async {
    Map res = await request("v2/accounts", parameters: {
      "email": email,
      "type": type,
      "public_profile": {
        "business_name": business_name,
      },
    });
    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return XenPlatFormAccount(res.cast<String, dynamic>());
  }

  /// mengambil account dari id
  Future<XenPlatFormAccount> getAccountById({
    required String id,
  }) async {
    Map res = await request(
      "v2/accounts/$id",
     
    );
    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return XenPlatFormAccount(res.cast<String, dynamic>());
  }

  /// meng update account xen platform
  Future<XenPlatFormAccount> updateAccount({
    required String id,
    required String email,
    required String business_name,
  }) async {
    Map res = await request("v2/accounts/$id", methodRequest: "patch", parameters: {
      "email": email,
      "public_profile": {
        "business_name": business_name,
      },
    });
    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return XenPlatFormAccount(res.cast<String, dynamic>());
  }

  /// transfer saldo ke orang lain
  Future<XenPlatFormCreateTransferResponse> transfer({
    required String reference,
    required int amount,
    required String source_user_id,
    required String destination_user_id,
  }) async {
    Map res = await request("transfers", parameters: {
      "reference": reference,
      "amount": amount,
      "source_user_id": source_user_id,
      "destination_user_id": destination_user_id,
    });
    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return XenPlatFormCreateTransferResponse(res.cast<String, dynamic>());
  }

  /// untuk check saldo
  Future<GetBalanceResponse> getBalance({String forUserId = "", String account_type = "CASH"}) async {
    Map res = await request("balance", queryParameters: {
      "account_type": account_type,
    }, headers: {
      "for-user-id": forUserId
    });
    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return GetBalanceResponse(res.cast<String, dynamic>());
  }

  /// untuk check transfer
  Future<XenPlatFormCreateTransferResponse> getTransfer({
    required String reference,
  }) async {
    Map res = await request("transfers/reference=$reference", methodRequest: "get");
    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return XenPlatFormCreateTransferResponse(res.cast<String, dynamic>());
  }

  /// untuk membuat rules
  Future<XenPlatFormCreateFeeRuleResponse> createFeeRule({
    required String name,
    required String description,
    required String unit,
    required num amount,
    required String currency,
  }) async {
    Map res = await request("fee_rules", parameters: {
      "name": name,
      "description": description,
      "routes": [
        {"unit": unit, "amount": amount, "currency": currency}
      ]
    });
    if (res["@type"] == "error") {
      return Future.error(XenditError(res));
    }
    return XenPlatFormCreateFeeRuleResponse(res.cast<String, dynamic>());
  }
}

extension MapDeleteValueNull on Map {
  /// delete value nulls on map
  void removeValueNulls() {
    removeWhere((key, value) {
      try {
        if (value == null) {
          return true;
        }
        if (value is String && value.isEmpty) {
          return true;
        }
        if (value is List && value.isEmpty) {
          return true;
        }
        if (value is Map && value.isEmpty) {
          return true;
        }
        if (value is List && value.isEmpty) {
          return true;
        }
      } catch (e) {}
      return false;
    });
    return;
  }
}

class XenditError {
  late Map data;
  XenditError(this.data);

  Map toMap() {
    return data;
  }

  Map toJson() {
    return data;
  }
}
