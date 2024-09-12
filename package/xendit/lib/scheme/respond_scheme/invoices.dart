// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "invoice.dart";

class Invoices extends JsonScheme {
  Invoices(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "invoices",
      "total_count": 0,
      "invoices": [
        {"@type": "invoice"}
      ]
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == invoices
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

  /// create [Invoices]
  /// Empty
  static Invoices empty() {
    return Invoices({});
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

  num? get total_count {
    try {
      if (rawData["total_count"] is num == false) {
        return null;
      }
      return rawData["total_count"] as num;
    } catch (e) {
      return null;
    }
  }

  set total_count(num? value) {
    rawData["total_count"] = value;
  }

  List<Invoice> get invoices {
    try {
      if (rawData["invoices"] is List == false) {
        return [];
      }
      return (rawData["invoices"] as List)
          .map((e) => Invoice(e as Map))
          .toList()
          .cast<Invoice>();
    } catch (e) {
      return [];
    }
  }

  set invoices(List<Invoice> values) {
    rawData["invoices"] = values.map((value) => value.toJson()).toList();
  }

  static Invoices create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "invoices",
    num? total_count,
    List<Invoice>? invoices,
  }) {
    // Invoices invoices = Invoices({
    final Map invoices_data_create_json = {
      "@type": special_type,
      "total_count": total_count,
      "invoices": (invoices != null) ? invoices.toJson() : null,
    };

    invoices_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (invoices_data_create_json.containsKey(key) == false) {
          invoices_data_create_json[key] = value;
        }
      });
    }
    return Invoices(invoices_data_create_json);
  }
}
