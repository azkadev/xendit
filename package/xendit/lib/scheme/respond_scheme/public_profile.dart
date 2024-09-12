// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class PublicProfile extends JsonScheme {
  PublicProfile(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "public_profile", "business_name": "RP"};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == public_profile
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

  /// create [PublicProfile]
  /// Empty
  static PublicProfile empty() {
    return PublicProfile({});
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

  set business_name(String? value) {
    rawData["business_name"] = value;
  }

  static PublicProfile create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "public_profile",
    String? business_name,
  }) {
    // PublicProfile publicProfile = PublicProfile({
    final Map publicProfile_data_create_json = {
      "@type": special_type,
      "business_name": business_name,
    };

    publicProfile_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (publicProfile_data_create_json.containsKey(key) == false) {
          publicProfile_data_create_json[key] = value;
        }
      });
    }
    return PublicProfile(publicProfile_data_create_json);
  }
}
