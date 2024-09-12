// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "public_profile.dart";

class Account extends JsonScheme {
  Account(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "account",
      "id": "63dea4d4adffcf7008873f2e",
      "created": "2023-02-04T18:32:52.889Z",
      "updated": "2023-02-04T18:32:52.889Z",
      "email": "jognitedev@gmail.com",
      "type": "OWNED",
      "public_profile": {"@type": "public_profile", "business_name": "RP"},
      "country": "ID",
      "status": "REGISTERED"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == account
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [Account]
  /// Empty
  static Account empty() {
    return Account({});
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

  set special_type(String? value) {
    rawData["@type"] = value;
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

  set id(String? value) {
    rawData["id"] = value;
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

  set created(String? value) {
    rawData["created"] = value;
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

  set updated(String? value) {
    rawData["updated"] = value;
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

  set email(String? value) {
    rawData["email"] = value;
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

  set type(String? value) {
    rawData["type"] = value;
  }

  PublicProfile get public_profile {
    try {
      if (rawData["public_profile"] is Map == false) {
        return PublicProfile({});
      }
      return PublicProfile(rawData["public_profile"] as Map);
    } catch (e) {
      return PublicProfile({});
    }
  }

  set public_profile(PublicProfile value) {
    rawData["public_profile"] = value.toJson();
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

  set country(String? value) {
    rawData["country"] = value;
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

  set status(String? value) {
    rawData["status"] = value;
  }

  static Account create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "account",
    String? id,
    String? created,
    String? updated,
    String? email,
    String? type,
    PublicProfile? public_profile,
    String? country,
    String? status,
  }) {
    // Account account = Account({
    final Map account_data_create_json = {
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

    account_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (account_data_create_json.containsKey(key) == false) {
          account_data_create_json[key] = value;
        }
      });
    }
    return Account(account_data_create_json);
  }
}
