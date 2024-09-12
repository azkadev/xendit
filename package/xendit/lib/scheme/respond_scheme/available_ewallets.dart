// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class AvailableEwallets extends JsonScheme {
  AvailableEwallets(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"ewallet_type": "LINKAJA", "@type": "available_ewallets"};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == available_ewallets
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

  /// create [AvailableEwallets]
  /// Empty
  static AvailableEwallets empty() {
    return AvailableEwallets({});
  }

  String? get ewallet_type {
    try {
      if (rawData["ewallet_type"] is String == false) {
        return null;
      }
      return rawData["ewallet_type"] as String;
    } catch (e) {
      return null;
    }
  }

  set ewallet_type(String? value) {
    rawData["ewallet_type"] = value;
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

  static AvailableEwallets create({
    bool schemeUtilsIsSetDefaultData = false,
    String? ewallet_type,
    String special_type = "available_ewallets",
  }) {
    // AvailableEwallets availableEwallets = AvailableEwallets({
    final Map availableEwallets_data_create_json = {
      "ewallet_type": ewallet_type,
      "@type": special_type,
    };

    availableEwallets_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (availableEwallets_data_create_json.containsKey(key) == false) {
          availableEwallets_data_create_json[key] = value;
        }
      });
    }
    return AvailableEwallets(availableEwallets_data_create_json);
  }
}
