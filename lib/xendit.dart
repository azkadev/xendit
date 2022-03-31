// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:http/http.dart';

class Xendit {
  String apiKey;
  Xendit(this.apiKey);

  request(String method,
      {Map? parameters, String methodRequest = "get"}) async {
    var url = "https://api.xendit.co/$method";
    var headers = {
      "Authorization": "Basic ${base64.encode(utf8.encode("$apiKey:"))}",
      "Content-Type": 'application/json'
    };
    var json_respond = {"status_code": 200, "status_bool": true, "result": {}};
    late Response result;
    if (methodRequest == "get") {
      result = await get(Uri.parse(url), headers: headers);
    } else if (methodRequest == "post") {
      parameters ??= {};

      result = await post(Uri.parse(url),
          headers: headers, body: json.encode(parameters));
    } else if (methodRequest == "patch") {
      parameters ??= {};
      result = await patch(Uri.parse(url),
          headers: headers, body: json.encode(parameters));
    } else {
      result = await get(Uri.parse(url), headers: headers);
    }
    json_respond["status_code"] = result.statusCode;
    try {
      json_respond["result"] = json.decode(result.body);
    } catch (e) {
      json_respond["result"] = result.body;
    }
    return json_respond;
  }

  getBalance([String accountType = "CASH"]) async {
    return await request("balance?account_type=$accountType");
  }

     getPaymentChannels() async {
        return await request("payment_channels");
    }

}
