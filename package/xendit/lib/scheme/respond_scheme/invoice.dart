// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "available_banks.dart";
import "available_retail_outlets.dart";
import "available_ewallets.dart";
import "available_qr_codes.dart";
import "customer_notification_preference.dart";

class Invoice extends JsonScheme {
  Invoice(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "invoice",
      "id": "63de9f1099c9419bdf5266c7",
      "external_id": "asasmalsm",
      "user_id": "610836e3824b6140a513dc38",
      "status": "PENDING",
      "merchant_name": "HEXAMINATE",
      "merchant_profile_picture_url":
          "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
      "amount": 100000,
      "expiry_date": "2023-02-05T18:08:16.896Z",
      "invoice_url":
          "https://checkout-staging.xendit.co/web/63de9f1099c9419bdf5266c7",
      "available_banks": [
        {
          "bank_code": "MANDIRI",
          "collection_type": "POOL",
          "transfer_amount": 100000,
          "bank_branch": "Virtual Account",
          "account_holder_name": "HEXAMINATE",
          "identity_amount": 0
        }
      ],
      "available_retail_outlets": [
        {"retail_outlet_name": "ALFAMART"}
      ],
      "available_ewallets": [
        {"ewallet_type": "OVO"},
        {"ewallet_type": "DANA"},
        {"ewallet_type": "SHOPEEPAY"},
        {"ewallet_type": "LINKAJA"}
      ],
      "available_qr_codes": [
        {"qr_code_type": "QRIS"}
      ],
      "available_direct_debits": [],
      "available_paylaters": [],
      "should_exclude_credit_card": false,
      "should_send_email": false,
      "created": "2023-02-04T18:08:17.642Z",
      "updated": "2023-02-04T18:08:17.642Z",
      "currency": "IDR",
      "customer_notification_preference": {
        "@type": "customer_notification_preference",
        "invoice_created": [],
        "invoice_reminder": [],
        "invoice_expired": [],
        "invoice_paid": []
      }
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == invoice
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

  /// create [Invoice]
  /// Empty
  static Invoice empty() {
    return Invoice({});
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

  String? get user_id {
    try {
      if (rawData["user_id"] is String == false) {
        return null;
      }
      return rawData["user_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set user_id(String? value) {
    rawData["user_id"] = value;
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

  String? get merchant_profile_picture_url {
    try {
      if (rawData["merchant_profile_picture_url"] is String == false) {
        return null;
      }
      return rawData["merchant_profile_picture_url"] as String;
    } catch (e) {
      return null;
    }
  }

  set merchant_profile_picture_url(String? value) {
    rawData["merchant_profile_picture_url"] = value;
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

  String? get expiry_date {
    try {
      if (rawData["expiry_date"] is String == false) {
        return null;
      }
      return rawData["expiry_date"] as String;
    } catch (e) {
      return null;
    }
  }

  set expiry_date(String? value) {
    rawData["expiry_date"] = value;
  }

  String? get invoice_url {
    try {
      if (rawData["invoice_url"] is String == false) {
        return null;
      }
      return rawData["invoice_url"] as String;
    } catch (e) {
      return null;
    }
  }

  set invoice_url(String? value) {
    rawData["invoice_url"] = value;
  }

  List<AvailableBanks> get available_banks {
    try {
      if (rawData["available_banks"] is List == false) {
        return [];
      }
      return (rawData["available_banks"] as List)
          .map((e) => AvailableBanks(e as Map))
          .toList()
          .cast<AvailableBanks>();
    } catch (e) {
      return [];
    }
  }

  set available_banks(List<AvailableBanks> values) {
    rawData["available_banks"] = values.map((value) => value.toJson()).toList();
  }

  List<AvailableRetailOutlets> get available_retail_outlets {
    try {
      if (rawData["available_retail_outlets"] is List == false) {
        return [];
      }
      return (rawData["available_retail_outlets"] as List)
          .map((e) => AvailableRetailOutlets(e as Map))
          .toList()
          .cast<AvailableRetailOutlets>();
    } catch (e) {
      return [];
    }
  }

  set available_retail_outlets(List<AvailableRetailOutlets> values) {
    rawData["available_retail_outlets"] =
        values.map((value) => value.toJson()).toList();
  }

  List<AvailableEwallets> get available_ewallets {
    try {
      if (rawData["available_ewallets"] is List == false) {
        return [];
      }
      return (rawData["available_ewallets"] as List)
          .map((e) => AvailableEwallets(e as Map))
          .toList()
          .cast<AvailableEwallets>();
    } catch (e) {
      return [];
    }
  }

  set available_ewallets(List<AvailableEwallets> values) {
    rawData["available_ewallets"] =
        values.map((value) => value.toJson()).toList();
  }

  List<AvailableQrCodes> get available_qr_codes {
    try {
      if (rawData["available_qr_codes"] is List == false) {
        return [];
      }
      return (rawData["available_qr_codes"] as List)
          .map((e) => AvailableQrCodes(e as Map))
          .toList()
          .cast<AvailableQrCodes>();
    } catch (e) {
      return [];
    }
  }

  set available_qr_codes(List<AvailableQrCodes> values) {
    rawData["available_qr_codes"] =
        values.map((value) => value.toJson()).toList();
  }

  ///
  /// default:
  ///
  ///
  List<Object> get available_direct_debits {
    try {
      if (rawData["available_direct_debits"] is List == false) {
        return [];
      }
      return (rawData["available_direct_debits"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  set available_direct_debits(List<Object> value) {
    rawData["available_direct_debits"] = value;
  }

  ///
  /// default:
  ///
  ///
  List<Object> get available_paylaters {
    try {
      if (rawData["available_paylaters"] is List == false) {
        return [];
      }
      return (rawData["available_paylaters"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  set available_paylaters(List<Object> value) {
    rawData["available_paylaters"] = value;
  }

  bool? get should_exclude_credit_card {
    try {
      if (rawData["should_exclude_credit_card"] is bool == false) {
        return null;
      }
      return rawData["should_exclude_credit_card"] as bool;
    } catch (e) {
      return null;
    }
  }

  set should_exclude_credit_card(bool? value) {
    rawData["should_exclude_credit_card"] = value;
  }

  bool? get should_send_email {
    try {
      if (rawData["should_send_email"] is bool == false) {
        return null;
      }
      return rawData["should_send_email"] as bool;
    } catch (e) {
      return null;
    }
  }

  set should_send_email(bool? value) {
    rawData["should_send_email"] = value;
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

  String? get updated {
    try {
      if (rawData["updated"] is String == false) {
        return null;
      }
      return rawData["updated"] as String;
    } catch (e) {
      return null;
    }
  }

  set updated(String? value) {
    rawData["updated"] = value;
  }

  String? get currency {
    try {
      if (rawData["currency"] is String == false) {
        return null;
      }
      return rawData["currency"] as String;
    } catch (e) {
      return null;
    }
  }

  set currency(String? value) {
    rawData["currency"] = value;
  }

  CustomerNotificationPreference get customer_notification_preference {
    try {
      if (rawData["customer_notification_preference"] is Map == false) {
        return CustomerNotificationPreference({});
      }
      return CustomerNotificationPreference(
          rawData["customer_notification_preference"] as Map);
    } catch (e) {
      return CustomerNotificationPreference({});
    }
  }

  set customer_notification_preference(CustomerNotificationPreference value) {
    rawData["customer_notification_preference"] = value.toJson();
  }

  static Invoice create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "invoice",
    String? id,
    String? external_id,
    String? user_id,
    String? status,
    String? merchant_name,
    String? merchant_profile_picture_url,
    num? amount,
    String? expiry_date,
    String? invoice_url,
    List<AvailableBanks>? available_banks,
    List<AvailableRetailOutlets>? available_retail_outlets,
    List<AvailableEwallets>? available_ewallets,
    List<AvailableQrCodes>? available_qr_codes,
    List<Object>? available_direct_debits,
    List<Object>? available_paylaters,
    bool? should_exclude_credit_card,
    bool? should_send_email,
    String? created,
    String? updated,
    String? currency,
    CustomerNotificationPreference? customer_notification_preference,
  }) {
    // Invoice invoice = Invoice({
    final Map invoice_data_create_json = {
      "@type": special_type,
      "id": id,
      "external_id": external_id,
      "user_id": user_id,
      "status": status,
      "merchant_name": merchant_name,
      "merchant_profile_picture_url": merchant_profile_picture_url,
      "amount": amount,
      "expiry_date": expiry_date,
      "invoice_url": invoice_url,
      "available_banks":
          (available_banks != null) ? available_banks.toJson() : null,
      "available_retail_outlets": (available_retail_outlets != null)
          ? available_retail_outlets.toJson()
          : null,
      "available_ewallets":
          (available_ewallets != null) ? available_ewallets.toJson() : null,
      "available_qr_codes":
          (available_qr_codes != null) ? available_qr_codes.toJson() : null,
      "available_direct_debits": available_direct_debits,
      "available_paylaters": available_paylaters,
      "should_exclude_credit_card": should_exclude_credit_card,
      "should_send_email": should_send_email,
      "created": created,
      "updated": updated,
      "currency": currency,
      "customer_notification_preference":
          (customer_notification_preference != null)
              ? customer_notification_preference.toJson()
              : null,
    };

    invoice_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (invoice_data_create_json.containsKey(key) == false) {
          invoice_data_create_json[key] = value;
        }
      });
    }
    return Invoice(invoice_data_create_json);
  }
}
