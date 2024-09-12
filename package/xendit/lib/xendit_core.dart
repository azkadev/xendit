/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names, empty_catches, unnecessary_brace_in_string_interps, unused_catch_stack, unnecessary_string_interpolations

import 'dart:async';
import 'dart:convert';

import 'package:general_lib/general_lib.dart';
import 'package:http/http.dart';
import 'package:xendit/extension/map.dart';
import 'package:xendit/scheme/respond_scheme/respond_scheme.dart';

/// xendit helo world heo gais
class Xendit {
  final String xendit_api_key;
  late final Client http_client;

  Xendit({
    required this.xendit_api_key,
    Client? httpClient,
  }) {
    if (httpClient == null) {
      http_client = Client();
    } else {
      http_client = httpClient;
    }
  }

  /// request method support all update
  FutureOr<Map> invokeRaw({
    /// GET https://api.xendit.co/v2/invoices/{invoice_id}
    required String endpoint,
    required Map parameters,
    required Map<String, String> headers,
    required Map<String, String> queryParameters,
    required String xenditApiKey,
    required Client httpClient,
    required String specialTypeSucces,
  }) async {
    parameters.extension_xendit_removeValueEmptyOrNull();
    final RegExp regExp_http_method = RegExp(r"^(get|post|patch)([ ]+)?", caseSensitive: false);
    final String methodRequest = (regExp_http_method.stringMatch(endpoint) ?? "get").toLowerCase().replaceAll(RegExp(r"([ ]+)?", caseSensitive: false), "").trim();

    final Uri urlApi = Uri.parse(endpoint.replaceAll(regExp_http_method, "")).replace(queryParameters: queryParameters);

    final Map<String, String> headersOption = <String, String>{
      "Authorization": "Basic ${base64.encode(utf8.encode("${xenditApiKey}:"))}",
      "Content-Type": 'application/json',
      ...headers,
    };
    final Response result = await Future(() async {
      if (methodRequest == "get") {
        return await httpClient.get(urlApi, headers: headersOption);
      } else if (methodRequest == "post") {
        return await httpClient.post(urlApi, headers: headersOption, body: json.encode(parameters));
      } else if (methodRequest == "patch") {
        return await httpClient.patch(urlApi, headers: headersOption, body: json.encode(parameters));
      } else {
        return await httpClient.get(urlApi, headers: headersOption);
      }
    });
    final Map body = {
      "@type": specialTypeSucces,
    };
    if (result.statusCode != 200) {
      body["@type"] = "error";
    }
    final String raw_data = result.body;
    try {
      final dynamic data = (json.decode(raw_data));
      if (data is List) {
        final String snake_key = specialTypeSucces.snakeCaseClass();
        body["total_count"] = data.length;
        if (RegExp(r"(s)$", caseSensitive: false).hashData(snake_key)) {
          body["${snake_key}s"] = data;
        } else {
          body[snake_key] = data;
        }
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

  /// request method support all update
  FutureOr<Map> invoke({
    /// GET https://api.xendit.co/v2/invoices/{invoice_id}
    required String endpoint,
    Map? parameters,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? xenditApiKey,
    Client? httpClient,
    String specialTypeSucces = "ok",
  }) async {
    return await invokeRaw(
      endpoint: endpoint,
      parameters: parameters ?? {},
      headers: headers ?? {},
      queryParameters: queryParameters ?? {},
      xenditApiKey: xenditApiKey ?? xendit_api_key,
      httpClient: httpClient ?? http_client,
      specialTypeSucces: specialTypeSucces,
    );
  }

  FutureOr<T> invokeBuilder<T>({
    /// GET https://api.xendit.co/v2/invoices/{invoice_id}
    required String endpoint,
    Map? parameters,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? xenditApiKey,
    Client? httpClient,
    String specialTypeSucces = "ok",
    required FutureOr<T> Function(Map result) onResult,
  }) async {
    return await onResult(await invoke(
      endpoint: endpoint,
      parameters: parameters,
      headers: headers,
      queryParameters: queryParameters,
      xenditApiKey: xenditApiKey,
      httpClient: httpClient,
      specialTypeSucces: specialTypeSucces,
    ));
  }


  Future<TransactionBalanceAccount> transferBalanceAccount({
    required String reference,
    required int amount,
    required String source_user_id,
    required String destination_user_id,
    Map<String, String>? headers,
  }) async {
    return await invokeBuilder(
      endpoint: "POST https://api.xendit.co/transfers",
      parameters: {
        "reference": reference,
        "amount": amount,
        "source_user_id": source_user_id,
        "destination_user_id": destination_user_id,
      },
      headers: headers,
      onResult: (result) {
        return TransactionBalanceAccount(result);
      },
    );
  }

  Future<TransactionBalanceAccount> getTransferBalanceAccount({
    required String reference,
    Map<String, String>? headers,
  }) async {
    return await invokeBuilder(
      endpoint: "GET https://api.xendit.co/transfers/reference=${reference}",
      headers: headers,
      onResult: (result) {
        return TransactionBalanceAccount(result);
      },
    );
  }

  Future<TransactionBalanceAccount> createFeeRule({
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
    return await invokeBuilder(
      endpoint: "POST https://api.xendit.co/fee_rules",
      parameters: jsonData,
      headers: headers,
      onResult: (result) {
        return TransactionBalanceAccount(result);
      },
    );
  }
}
