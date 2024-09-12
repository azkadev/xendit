// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class CustomerNotificationPreference extends JsonScheme {
  CustomerNotificationPreference(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "customer_notification_preference",
      "invoice_created": [],
      "invoice_reminder": [],
      "invoice_expired": [],
      "invoice_paid": []
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == customer_notification_preference
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

  /// create [CustomerNotificationPreference]
  /// Empty
  static CustomerNotificationPreference empty() {
    return CustomerNotificationPreference({});
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

  ///
  /// default:
  ///
  ///
  List<Object> get invoice_created {
    try {
      if (rawData["invoice_created"] is List == false) {
        return [];
      }
      return (rawData["invoice_created"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  set invoice_created(List<Object> value) {
    rawData["invoice_created"] = value;
  }

  ///
  /// default:
  ///
  ///
  List<Object> get invoice_reminder {
    try {
      if (rawData["invoice_reminder"] is List == false) {
        return [];
      }
      return (rawData["invoice_reminder"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  set invoice_reminder(List<Object> value) {
    rawData["invoice_reminder"] = value;
  }

  ///
  /// default:
  ///
  ///
  List<Object> get invoice_expired {
    try {
      if (rawData["invoice_expired"] is List == false) {
        return [];
      }
      return (rawData["invoice_expired"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  set invoice_expired(List<Object> value) {
    rawData["invoice_expired"] = value;
  }

  ///
  /// default:
  ///
  ///
  List<Object> get invoice_paid {
    try {
      if (rawData["invoice_paid"] is List == false) {
        return [];
      }
      return (rawData["invoice_paid"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  set invoice_paid(List<Object> value) {
    rawData["invoice_paid"] = value;
  }

  static CustomerNotificationPreference create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "customer_notification_preference",
    List<Object>? invoice_created,
    List<Object>? invoice_reminder,
    List<Object>? invoice_expired,
    List<Object>? invoice_paid,
  }) {
    // CustomerNotificationPreference customerNotificationPreference = CustomerNotificationPreference({
    final Map customerNotificationPreference_data_create_json = {
      "@type": special_type,
      "invoice_created": invoice_created,
      "invoice_reminder": invoice_reminder,
      "invoice_expired": invoice_expired,
      "invoice_paid": invoice_paid,
    };

    customerNotificationPreference_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (customerNotificationPreference_data_create_json.containsKey(key) ==
            false) {
          customerNotificationPreference_data_create_json[key] = value;
        }
      });
    }
    return CustomerNotificationPreference(
        customerNotificationPreference_data_create_json);
  }
}
