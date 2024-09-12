// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class AvailableQrCodes extends JsonScheme {
  AvailableQrCodes(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"qr_code_type": "QRIS", "@type": "available_qr_codes"};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == available_qr_codes
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

  /// create [AvailableQrCodes]
  /// Empty
  static AvailableQrCodes empty() {
    return AvailableQrCodes({});
  }

  String? get qr_code_type {
    try {
      if (rawData["qr_code_type"] is String == false) {
        return null;
      }
      return rawData["qr_code_type"] as String;
    } catch (e) {
      return null;
    }
  }

  set qr_code_type(String? value) {
    rawData["qr_code_type"] = value;
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

  static AvailableQrCodes create({
    bool schemeUtilsIsSetDefaultData = false,
    String? qr_code_type,
    String special_type = "available_qr_codes",
  }) {
    // AvailableQrCodes availableQrCodes = AvailableQrCodes({
    final Map availableQrCodes_data_create_json = {
      "qr_code_type": qr_code_type,
      "@type": special_type,
    };

    availableQrCodes_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (availableQrCodes_data_create_json.containsKey(key) == false) {
          availableQrCodes_data_create_json[key] = value;
        }
      });
    }
    return AvailableQrCodes(availableQrCodes_data_create_json);
  }
}
