// ignore_for_file: non_constant_identifier_names, empty_catches, unnecessary_brace_in_string_interps, unused_catch_stack, unnecessary_string_interpolations

import 'dart:convert';

import 'package:http/http.dart';
// import 'package:xendit/scheme/create_invoice.dart';
import "scheme/scheme.dart" as xendit_scheme;

/// xendit helo world heo gais
class Xendit {
  String api_key;
  late final Client http_client;

  /// xendit helo world heo gais
  Xendit({
    required this.api_key,
    Client? httpClient,
  }) {
    if (httpClient == null) {
      http_client = Client();
    } else {
      http_client = httpClient;
    }
  }

  /// request method support all update
  Future<Map> invoke({
    /// GET https://api.xendit.co/v2/invoices/{invoice_id}
    required String endpoint,
    Map? parameters,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiKey,
    Client? httpClient,
  }) async {
    parameters ??= {};
    headers ??= {};
    apiKey ??= api_key;
    final String methodRequest = (RegExp(r"^(get|post|patch)([ ]+)?", caseSensitive: false).stringMatch(endpoint) ?? "get").toLowerCase().replaceAll(RegExp(r"([ ]+)?", caseSensitive: false), "");
    String url = "https://api.xendit.co";
    url = endpoint.replaceAll(RegExp(r"^(get|post|patch)([ ]+)?", caseSensitive: false), "");
   final  Map<String, String> headersOption = {
      "Authorization": "Basic ${base64.encode(utf8.encode("${apiKey}:"))}",
      "Content-Type": 'application/json',
      ...headers,
    };
    final Uri urlApi = Uri.parse(url).replace(queryParameters: queryParameters);

    final Response result = await Future(() async {
      if (methodRequest == "get") {
        return await (httpClient ??= http_client).get(urlApi, headers: headersOption);
      } else if (methodRequest == "post") {
        return await (httpClient ??= http_client).post(urlApi, headers: headersOption, body: json.encode(parameters));
      } else if (methodRequest == "patch") {
        return await (httpClient ??= http_client).patch(urlApi, headers: headersOption, body: json.encode(parameters));
      } else {
        return await (httpClient ??= http_client).get(urlApi, headers: headersOption);
      }
    });
    final Map body = {
      "@type": "ok",
    };
    if (result.statusCode != 200) {
      body["@type"] = "error";
    }
    final String raw_data = result.body;
    try {
      final dynamic data = (json.decode(raw_data));
      if (data is List) {
        body["datas"] = data;
      } else {
        body.addAll(data);
      }
    } catch (e, stack) {
      body.addAll({
        "message": "${raw_data}",
      });
    }
    return body;
  }

  Future<xendit_scheme.Balance> getBalance({
    String forUserId = "",
    required String account_type,
  }) async {
    final Map res = await invoke(
      endpoint: "GET https://api.xendit.co/balance?account_type=${account_type}",
      headers: {
        "for-user-id": forUserId,
      },
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.Balance(res.cast<String, dynamic>());
  }

  /// invoices
  Future<xendit_scheme.CreateInvoice> createInvoice({
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
    Map<String, String>? headers,
  }) async {
   final Map jsonData = {
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
   final  Map res = await invoke(
      endpoint: "POST https://api.xendit.co/v2/invoices",
      headers: {
        "for-user-id": forUserId,
        "with-fee-rule": withFeeRule,
        ...(headers ?? {}),
      },
      parameters: jsonData,
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.CreateInvoice(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.GetInvoice> getInvoice({
    String forUserId = "",
    required String invoice_id,
  }) async {
  final  Map res = await invoke(
      endpoint: "GET https://api.xendit.co/v2/invoices/${invoice_id}",
      headers: {
        "for-user-id": forUserId,
      },
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.GetInvoice(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.GetInvoice> getInvoiceByExternalId({
    String forUserId = "",
    required String external_id,
  }) async {
   final Map res = await invoke(
      endpoint: "GET https://api.xendit.co/v2/invoices/?external_id=${external_id}",
      headers: {
        "for-user-id": forUserId,
      },
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.GetInvoice(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.ExpireInvoice> ExpireInvoice({
    String forUserId = "",
    required String invoice_id,
  }) async {
   final  Map res = await invoke(
      endpoint: "POST https://api.xendit.co/invoices/${invoice_id}/expire!",
      headers: {
        "for-user-id": forUserId,
      },
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.ExpireInvoice(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.ListAllInvoice> ListAllInvoice({
    String forUserId = "",
  }) async {
    final Map res = await invoke(
      endpoint: "GET https://api.xendit.co/v2/invoices",
      headers: {
        "for-user-id": forUserId,
      },
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.ListAllInvoice(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.CreatePayOutLink> createPayOutLink({
    String forUserId = "",
    required String external_id,
    required int amount,
    required String email,
  }) async {
    final Map res = await invoke(
      endpoint: "POST https://api.xendit.co/payouts",
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
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.CreatePayOutLink(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.GetPayOutLink> getPayOutLink({
    String forUserId = "",
    required String id,
  }) async {
    final Map res = await invoke(
      endpoint: "GET https://api.xendit.co/payouts/${id}",
      headers: {
        "for-user-id": forUserId,
      },
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.GetPayOutLink(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.VoidPayOutLink> voidPayOutLink({
    String forUserId = "",
    required String id,
  }) async {
    final Map res = await invoke(
      endpoint: "POST https://api.xendit.co/payouts/${id}/void",
      headers: {
        "for-user-id": forUserId,
      },
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.VoidPayOutLink(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.Account> createAccount({
    required String email,
    required String type,
    required String bussiness_name,
    Map<String, String>? headers,
  }) async {
    final Map res = await invoke(
      endpoint: "POST https://api.xendit.co/v2/accounts",
      parameters: {
        "email": email,
        "type": type,
        "public_profile": {
          "business_name": bussiness_name,
        },
      },
      headers: headers,
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.Account(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.Account> getAccount({
    required String id,
    Map<String, String>? headers,
  }) async {
    final Map res = await invoke(
      endpoint: "GET https://api.xendit.co/v2/accounts/${id}",
      headers: headers,
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.Account(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.Account> updateAccount({
    required String id,
    required String email,
    required String bussiness_name,
    Map<String, String>? headers,
  }) async {
   final Map res = await invoke(
      endpoint: "PATCH https://api.xendit.co/v2/accounts/{id}",
      parameters: {
        "email": email,
        "public_profile": {
          "business_name": bussiness_name,
        },
      },
      headers: headers,
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.Account(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.TransferBalanceAccount> transferBalanceAccount({
    required String reference,
    required int amount,
    required String source_user_id,
    required String destination_user_id,
    Map<String, String>? headers,
  }) async {
   final Map res = await invoke(
        endpoint: "POST https://api.xendit.co/transfers",
        parameters: {
          "reference": reference,
          "amount": amount,
          "source_user_id": source_user_id,
          "destination_user_id": destination_user_id,
        },
        headers: headers);

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.TransferBalanceAccount(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.TransferBalanceAccount> getTransferBalanceAccount({
    required String reference,
    Map<String, String>? headers,
  }) async {
   final  Map res = await invoke(
      endpoint: "GET https://api.xendit.co/transfers/reference=${reference}",
      headers: headers,
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.TransferBalanceAccount(res.cast<String, dynamic>());
  }

  Future<xendit_scheme.TransferBalanceAccount> createFeeRule({
    required String name,
    required String description,
    required List<Map> routes,
    Map<String, String>? headers,
  }) async {
    final Map jsonData = {
      "name": name,
      "description": description,
      "routes": routes,
    };
    jsonData.removeValueNulls();
    final Map res = await invoke(
      endpoint: "POST https://api.xendit.co/fee_rules",
      parameters: jsonData,
      headers: headers,
    );

    if (res["@type"] == "error") {
      return await Future.error(XenditError(res));
    }
    return xendit_scheme.TransferBalanceAccount(res.cast<String, dynamic>());
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
  final Map data;
  const XenditError(this.data);

  Map toMap() {
    return data;
  }

  Map toJson() {
    return data;
  }
}
