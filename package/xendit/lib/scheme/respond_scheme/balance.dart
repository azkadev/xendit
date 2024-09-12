// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Balance extends JsonScheme {
  Balance(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "balance", "balance": 0};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == balance
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

  /// create [Balance]
  /// Empty
  static Balance empty() {
    return Balance({});
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

  num? get balance {
    try {
      if (rawData["balance"] is num == false) {
        return null;
      }
      return rawData["balance"] as num;
    } catch (e) {
      return null;
    }
  }

  set balance(num? value) {
    rawData["balance"] = value;
  }

  static Balance create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "balance",
    num? balance,
  }) {
    // Balance balance = Balance({
    final Map balance_data_create_json = {
      "@type": special_type,
      "balance": balance,
    };

    balance_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (balance_data_create_json.containsKey(key) == false) {
          balance_data_create_json[key] = value;
        }
      });
    }
    return Balance(balance_data_create_json);
  }
}
