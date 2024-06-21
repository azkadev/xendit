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
// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class GetPayOutLink {
  Map rawData;

  GetPayOutLink(this.rawData);

  static Map get defaultData {
    return {
      "@type": "ok",
      "id": "acb0a7a4-82fb-47de-8d91-f302c5350cc6",
      "external_id": "saosaks",
      "amount": 50000,
      "merchant_name": "HEXAMINATE",
      "status": "PENDING",
      "expiration_timestamp": "2023-02-07T18:22:14.632Z",
      "created": "2023-02-04T18:22:13.249Z",
      "email": "",
      "payout_url":
          "https://payout-staging.xendit.co/web/acb0a7a4-82fb-47de-8d91-f302c5350cc6"
    };
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get id {
    try {
      if (rawData["id"] is String == false) {
        return null;
      }
      return rawData["id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get external_id {
    try {
      if (rawData["external_id"] is String == false) {
        return null;
      }
      return rawData["external_id"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get amount {
    try {
      if (rawData["amount"] is int == false) {
        return null;
      }
      return rawData["amount"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get merchant_name {
    try {
      if (rawData["merchant_name"] is String == false) {
        return null;
      }
      return rawData["merchant_name"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get status {
    try {
      if (rawData["status"] is String == false) {
        return null;
      }
      return rawData["status"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get expiration_timestamp {
    try {
      if (rawData["expiration_timestamp"] is String == false) {
        return null;
      }
      return rawData["expiration_timestamp"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get created {
    try {
      if (rawData["created"] is String == false) {
        return null;
      }
      return rawData["created"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get email {
    try {
      if (rawData["email"] is String == false) {
        return null;
      }
      return rawData["email"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get payout_url {
    try {
      if (rawData["payout_url"] is String == false) {
        return null;
      }
      return rawData["payout_url"] as String;
    } catch (e) {
      return null;
    }
  }

  static GetPayOutLink create({
    String? special_type,
    String? id,
    String? external_id,
    int? amount,
    String? merchant_name,
    String? status,
    String? expiration_timestamp,
    String? created,
    String? email,
    String? payout_url,
  }) {
    Map jsonData = GetPayOutLink.defaultData;
    Map jsonCreate = {
      "@type": special_type,
      "id": id,
      "external_id": external_id,
      "amount": amount,
      "merchant_name": merchant_name,
      "status": status,
      "expiration_timestamp": expiration_timestamp,
      "created": created,
      "email": email,
      "payout_url": payout_url,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("GetPayOutLink ${e.toString()}, ${stack.toString()}");
      }
    });
    return GetPayOutLink(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}
