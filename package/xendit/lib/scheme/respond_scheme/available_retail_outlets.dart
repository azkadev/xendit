// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class AvailableRetailOutlets extends JsonScheme {
  AvailableRetailOutlets(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "retail_outlet_name": "ALFAMART",
      "@type": "available_retail_outlets"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == available_retail_outlets
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

  /// create [AvailableRetailOutlets]
  /// Empty
  static AvailableRetailOutlets empty() {
    return AvailableRetailOutlets({});
  }

  String? get retail_outlet_name {
    try {
      if (rawData["retail_outlet_name"] is String == false) {
        return null;
      }
      return rawData["retail_outlet_name"] as String;
    } catch (e) {
      return null;
    }
  }

  set retail_outlet_name(String? value) {
    rawData["retail_outlet_name"] = value;
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

  static AvailableRetailOutlets create({
    bool schemeUtilsIsSetDefaultData = false,
    String? retail_outlet_name,
    String special_type = "available_retail_outlets",
  }) {
    // AvailableRetailOutlets availableRetailOutlets = AvailableRetailOutlets({
    final Map availableRetailOutlets_data_create_json = {
      "retail_outlet_name": retail_outlet_name,
      "@type": special_type,
    };

    availableRetailOutlets_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (availableRetailOutlets_data_create_json.containsKey(key) == false) {
          availableRetailOutlets_data_create_json[key] = value;
        }
      });
    }
    return AvailableRetailOutlets(availableRetailOutlets_data_create_json);
  }
}
