// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class AvailableBanks extends JsonScheme {
  AvailableBanks(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "bank_code": "MANDIRI",
      "collection_type": "POOL",
      "transfer_amount": 100000,
      "bank_branch": "Virtual Account",
      "account_holder_name": "HEXAMINATE",
      "identity_amount": 0,
      "@type": "available_banks"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == available_banks
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

  /// create [AvailableBanks]
  /// Empty
  static AvailableBanks empty() {
    return AvailableBanks({});
  }

  String? get bank_code {
    try {
      if (rawData["bank_code"] is String == false) {
        return null;
      }
      return rawData["bank_code"] as String;
    } catch (e) {
      return null;
    }
  }

  set bank_code(String? value) {
    rawData["bank_code"] = value;
  }

  String? get collection_type {
    try {
      if (rawData["collection_type"] is String == false) {
        return null;
      }
      return rawData["collection_type"] as String;
    } catch (e) {
      return null;
    }
  }

  set collection_type(String? value) {
    rawData["collection_type"] = value;
  }

  num? get transfer_amount {
    try {
      if (rawData["transfer_amount"] is num == false) {
        return null;
      }
      return rawData["transfer_amount"] as num;
    } catch (e) {
      return null;
    }
  }

  set transfer_amount(num? value) {
    rawData["transfer_amount"] = value;
  }

  String? get bank_branch {
    try {
      if (rawData["bank_branch"] is String == false) {
        return null;
      }
      return rawData["bank_branch"] as String;
    } catch (e) {
      return null;
    }
  }

  set bank_branch(String? value) {
    rawData["bank_branch"] = value;
  }

  String? get account_holder_name {
    try {
      if (rawData["account_holder_name"] is String == false) {
        return null;
      }
      return rawData["account_holder_name"] as String;
    } catch (e) {
      return null;
    }
  }

  set account_holder_name(String? value) {
    rawData["account_holder_name"] = value;
  }

  num? get identity_amount {
    try {
      if (rawData["identity_amount"] is num == false) {
        return null;
      }
      return rawData["identity_amount"] as num;
    } catch (e) {
      return null;
    }
  }

  set identity_amount(num? value) {
    rawData["identity_amount"] = value;
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

  static AvailableBanks create({
    bool schemeUtilsIsSetDefaultData = false,
    String? bank_code,
    String? collection_type,
    num? transfer_amount,
    String? bank_branch,
    String? account_holder_name,
    num? identity_amount,
    String special_type = "available_banks",
  }) {
    // AvailableBanks availableBanks = AvailableBanks({
    final Map availableBanks_data_create_json = {
      "bank_code": bank_code,
      "collection_type": collection_type,
      "transfer_amount": transfer_amount,
      "bank_branch": bank_branch,
      "account_holder_name": account_holder_name,
      "identity_amount": identity_amount,
      "@type": special_type,
    };

    availableBanks_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (availableBanks_data_create_json.containsKey(key) == false) {
          availableBanks_data_create_json[key] = value;
        }
      });
    }
    return AvailableBanks(availableBanks_data_create_json);
  }
}
