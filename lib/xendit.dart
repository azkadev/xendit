// ignore_for_file: non_constant_identifier_names, prefer_final_fields, empty_catches
import 'dart:convert';
import 'package:http/http.dart';

/// xendit
class Xendit {
  String apiKey;
  Xendit(this.apiKey);

  request(String method, {Map? parameters, String methodRequest = "get", Map<String, String>? header}) async {
    var url = "https://api.xendit.co/$method";
    header ??= {};
    var headers = {
      "Authorization": "Basic ${base64.encode(utf8.encode("$apiKey:"))}",
      "Content-Type": 'application/json',
      ...header
    };
    var json_respond = {"status_code": 200, "status_bool": true, "result": {}};
    late Response result;
    methodRequest = methodRequest.toLowerCase();
    if (methodRequest == "get") {
      result = await get(Uri.parse(url), headers: headers);
    } else if (methodRequest == "post") {
      parameters ??= {};
      result = await post(Uri.parse(url), headers: headers, body: json.encode(parameters));
    } else if (methodRequest == "patch") {
      parameters ??= {};
      result = await patch(Uri.parse(url), headers: headers, body: json.encode(parameters));
    }
    if (methodRequest == "delete") {
      parameters ??= {};
      result = await delete(Uri.parse(url), headers: headers, body: json.encode(parameters));
    } else {
      result = await get(Uri.parse(url), headers: headers);
    }
    if (result.statusCode != 200) {
      json_respond["status_bool"] = false;
    }
    json_respond["status_code"] = result.statusCode;
    try {
      json_respond["result"] = json.decode(result.body);
    } catch (e) {
      json_respond["result"] = {};
    }
    return json_respond;
  }

  getBalance([String accountType = "CASH"]) async {
    return await request("balance?account_type=$accountType");
  }

  getPaymentChannels() async {
    return await request("payment_channels");
  }

  createCustomer(String reference_id, String phone_number, String email, String given_names, {Map? parameters}) async {
    parameters ??= {};
    return await request("customers", parameters: {"reference_id": reference_id, "mobile_number": phone_number, "email": email, "given_names": given_names, ...parameters}, methodRequest: "post");
  }

  getCustomer(String reference_id) async {
    return await request("customers?reference_id=$reference_id");
  }

  getTransaction(String transaction_id) async {
    return await request("transactions/$transaction_id");
  }

  getTransactions() async {
    return await request("transactions");
  }

  createQrCode(String external_id, String type, String callback_url, {Map? parameters}) async {
    parameters ??= {};
    return await request("qr_codes", parameters: {"external_id": external_id, "type": type, "callback_url": callback_url, ...parameters}, methodRequest: "post");
  }

  checkQrCode(String external_id) async {
    return await request("qr_codes/$external_id", methodRequest: "get");
  }

  createVirtualAccounts(String name, String bank_code, String external_id, {bool is_closed = false, int expected_amount = 0, Map? parameters}) async {
    parameters ??= {};
    return await request("callback_virtual_accounts", parameters: {"name": name, "bank_code": bank_code, "external_id": external_id, "is_closed": is_closed, "expected_amount": expected_amount, ...parameters}, methodRequest: "post");
  }

  checkVirtualAccounts(String id) async {
    return await request("callback_virtual_accounts/$id");
  }

  changeVirtualAccounts(String id, Map? parameters) async {
    return await request("callback_virtual_accounts/$id", parameters: parameters, methodRequest: "patch");
  }
}
