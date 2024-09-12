// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class XenditError extends JsonScheme {
  XenditError(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "xenditError", "message": ""};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == xenditError
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

  /// create [XenditError]
  /// Empty
  static XenditError empty() {
    return XenditError({});
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

  String? get message {
    try {
      if (rawData["message"] is String == false) {
        return null;
      }
      return rawData["message"] as String;
    } catch (e) {
      return null;
    }
  }

  set message(String? value) {
    rawData["message"] = value;
  }

  static XenditError create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "xenditError",
    String? message,
  }) {
    // XenditError xenditError = XenditError({
    final Map xenditError_data_create_json = {
      "@type": special_type,
      "message": message,
    };

    xenditError_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (xenditError_data_create_json.containsKey(key) == false) {
          xenditError_data_create_json[key] = value;
        }
      });
    }
    return XenditError(xenditError_data_create_json);
  }
}
