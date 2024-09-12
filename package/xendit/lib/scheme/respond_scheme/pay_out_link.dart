// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class PayOutLink extends JsonScheme {
  PayOutLink(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "payOutLink",
      "id": "",
      "external_id": "",
      "amount": 0,
      "merchant_name": "",
      "status": "",
      "expiration_timestamp": "2023-02-07T18:22:14.632Z",
      "created": "2023-02-04T18:22:13.249Z",
      "email": "",
      "payout_url":
          "https://payout-staging.xendit.co/web/acb0a7a4-82fb-47de-8d91-f302c5350cc6"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == payOutLink
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

  /// create [PayOutLink]
  /// Empty
  static PayOutLink empty() {
    return PayOutLink({});
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

  String? get external_id {
    try {
      if (rawData["external_id"] is String == false) {
        return null;
      }
      return rawData["external_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set external_id(String? value) {
    rawData["external_id"] = value;
  }

  num? get amount {
    try {
      if (rawData["amount"] is num == false) {
        return null;
      }
      return rawData["amount"] as num;
    } catch (e) {
      return null;
    }
  }

  set amount(num? value) {
    rawData["amount"] = value;
  }

  String? get merchant_name {
    try {
      if (rawData["merchant_name"] is String == false) {
        return null;
      }
      return rawData["merchant_name"] as String;
    } catch (e) {
      return null;
    }
  }

  set merchant_name(String? value) {
    rawData["merchant_name"] = value;
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

  String? get expiration_timestamp {
    try {
      if (rawData["expiration_timestamp"] is String == false) {
        return null;
      }
      return rawData["expiration_timestamp"] as String;
    } catch (e) {
      return null;
    }
  }

  set expiration_timestamp(String? value) {
    rawData["expiration_timestamp"] = value;
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

  String? get payout_url {
    try {
      if (rawData["payout_url"] is String == false) {
        return null;
      }
      return rawData["payout_url"] as String;
    } catch (e) {
      return null;
    }
  }

  set payout_url(String? value) {
    rawData["payout_url"] = value;
  }

  static PayOutLink create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "payOutLink",
    String? id,
    String? external_id,
    num? amount,
    String? merchant_name,
    String? status,
    String? expiration_timestamp,
    String? created,
    String? email,
    String? payout_url,
  }) {
    // PayOutLink payOutLink = PayOutLink({
    final Map payOutLink_data_create_json = {
      "@type": special_type,
      "id": id,
      "external_id": external_id,
      "amount": amount,
      "merchant_name": merchant_name,
      "status": status,
      "expiration_timestamp": expiration_timestamp,
      "created": created,
      "email": email,
      "payout_url": payout_url,
    };

    payOutLink_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (payOutLink_data_create_json.containsKey(key) == false) {
          payOutLink_data_create_json[key] = value;
        }
      });
    }
    return PayOutLink(payOutLink_data_create_json);
  }
}
