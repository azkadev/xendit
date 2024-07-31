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

class Account {
  Map rawData;

  Account(this.rawData);

  static Map get defaultData {
    return {
      "@type": "ok",
      "id": "63dea4d4adffcf7008873f2e",
      "created": "2023-02-04T18:32:52.889Z",
      "updated": "2023-02-04T18:32:52.889Z",
      "email": "jognitedev@gmail.com",
      "type": "OWNED",
      "public_profile": {"business_name": "RP"},
      "country": "ID",
      "status": "REGISTERED"
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

  String? get updated {
    try {
      if (rawData["updated"] is String == false) {
        return null;
      }
      return rawData["updated"] as String;
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

  String? get type {
    try {
      if (rawData["type"] is String == false) {
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }

  AccountPublicProfile get public_profile {
    try {
      if (rawData["public_profile"] is Map == false) {
        return AccountPublicProfile({});
      }
      return AccountPublicProfile(rawData["public_profile"] as Map);
    } catch (e) {
      return AccountPublicProfile({});
    }
  }

  String? get country {
    try {
      if (rawData["country"] is String == false) {
        return null;
      }
      return rawData["country"] as String;
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

  static Account create({
    String? special_type,
    String? id,
    String? created,
    String? updated,
    String? email,
    String? type,
    AccountPublicProfile? public_profile,
    String? country,
    String? status,
  }) {
    Map jsonData = Account.defaultData;
    Map jsonCreate = {
      "@type": special_type,
      "id": id,
      "created": created,
      "updated": updated,
      "email": email,
      "type": type,
      "public_profile":
          (public_profile != null) ? public_profile.toJson() : null,
      "country": country,
      "status": status,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("Account ${e.toString()}, ${stack.toString()}");
      }
    });
    return Account(jsonData);
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

class AccountPublicProfile {
  Map rawData;

  AccountPublicProfile(this.rawData);

  static Map get defaultData {
    return {"business_name": "RP"};
  }

  String? get business_name {
    try {
      if (rawData["business_name"] is String == false) {
        return null;
      }
      return rawData["business_name"] as String;
    } catch (e) {
      return null;
    }
  }

  static AccountPublicProfile create({
    String? business_name,
  }) {
    Map jsonData = AccountPublicProfile.defaultData;
    Map jsonCreate = {
      "business_name": business_name,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("AccountPublicProfile ${e.toString()}, ${stack.toString()}");
      }
    });
    return AccountPublicProfile(jsonData);
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
