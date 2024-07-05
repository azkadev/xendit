// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class GetInvoice {
  Map rawData;

  GetInvoice(this.rawData);

  static Map get defaultData {
    return {
      "@type": "ok",
      "id": "63de9f1099c9419bdf5266c7",
      "external_id": "asasmalsm",
      "user_id": "610836e3824b6140a513dc38",
      "status": "PENDING",
      "merchant_name": "HEXAMINATE",
      "merchant_profile_picture_url": "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
      "amount": 100000,
      "expiry_date": "2023-02-05T18:08:16.896Z",
      "invoice_url": "https://checkout-staging.xendit.co/web/63de9f1099c9419bdf5266c7",
      "available_banks": [
        {"bank_code": "MANDIRI", "collection_type": "POOL", "transfer_amount": 100000, "bank_branch": "Virtual Account", "account_holder_name": "HEXAMINATE", "identity_amount": 0},
        {"bank_code": "BRI", "collection_type": "POOL", "transfer_amount": 100000, "bank_branch": "Virtual Account", "account_holder_name": "HEXAMINATE", "identity_amount": 0},
        {"bank_code": "BNI", "collection_type": "POOL", "transfer_amount": 100000, "bank_branch": "Virtual Account", "account_holder_name": "HEXAMINATE", "identity_amount": 0},
        {"bank_code": "PERMATA", "collection_type": "POOL", "transfer_amount": 100000, "bank_branch": "Virtual Account", "account_holder_name": "HEXAMINATE", "identity_amount": 0},
        {"bank_code": "BCA", "collection_type": "POOL", "transfer_amount": 100000, "bank_branch": "Virtual Account", "account_holder_name": "HEXAMINATE", "identity_amount": 0}
      ],
      "available_retail_outlets": [
        {"retail_outlet_name": "ALFAMART"},
        {"retail_outlet_name": "INDOMARET"}
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
      "customer_notification_preference": {"invoice_created": [], "invoice_reminder": [], "invoice_expired": [], "invoice_paid": []}
    };
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

  int? get amount {
    try {
      if (rawData["amount"] is int == false) {
        return null;
      }
      return rawData["amount"] as int;
    } catch (e) {
      return null;
    }
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

  List<GetInvoiceAvailableBanks> get available_banks {
    try {
      if (rawData["available_banks"] is List == false) {
        return [];
      }
      return (rawData["available_banks"] as List).map((e) => GetInvoiceAvailableBanks(e as Map)).toList().cast<GetInvoiceAvailableBanks>();
    } catch (e) {
      return [];
    }
  }

  List<GetInvoiceAvailableRetailOutlets> get available_retail_outlets {
    try {
      if (rawData["available_retail_outlets"] is List == false) {
        return [];
      }
      return (rawData["available_retail_outlets"] as List).map((e) => GetInvoiceAvailableRetailOutlets(e as Map)).toList().cast<GetInvoiceAvailableRetailOutlets>();
    } catch (e) {
      return [];
    }
  }

  List<GetInvoiceAvailableEwallets> get available_ewallets {
    try {
      if (rawData["available_ewallets"] is List == false) {
        return [];
      }
      return (rawData["available_ewallets"] as List).map((e) => GetInvoiceAvailableEwallets(e as Map)).toList().cast<GetInvoiceAvailableEwallets>();
    } catch (e) {
      return [];
    }
  }

  List<GetInvoiceAvailableQrCodes> get available_qr_codes {
    try {
      if (rawData["available_qr_codes"] is List == false) {
        return [];
      }
      return (rawData["available_qr_codes"] as List).map((e) => GetInvoiceAvailableQrCodes(e as Map)).toList().cast<GetInvoiceAvailableQrCodes>();
    } catch (e) {
      return [];
    }
  }

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

  GetInvoiceCustomerNotificationPreference get customer_notification_preference {
    try {
      if (rawData["customer_notification_preference"] is Map == false) {
        return GetInvoiceCustomerNotificationPreference({});
      }
      return GetInvoiceCustomerNotificationPreference(rawData["customer_notification_preference"] as Map);
    } catch (e) {
      return GetInvoiceCustomerNotificationPreference({});
    }
  }

  static GetInvoice create({
    String? special_type,
    String? id,
    String? external_id,
    String? user_id,
    String? status,
    String? merchant_name,
    String? merchant_profile_picture_url,
    int? amount,
    String? expiry_date,
    String? invoice_url,
    List<GetInvoiceAvailableBanks?>? available_banks,
    List<GetInvoiceAvailableRetailOutlets?>? available_retail_outlets,
    List<GetInvoiceAvailableEwallets?>? available_ewallets,
    List<GetInvoiceAvailableQrCodes?>? available_qr_codes,
    List<Object?>? available_direct_debits,
    List<Object?>? available_paylaters,
    bool? should_exclude_credit_card,
    bool? should_send_email,
    String? created,
    String? updated,
    String? currency,
    GetInvoiceCustomerNotificationPreference? customer_notification_preference,
  }) {
    Map jsonData = GetInvoice.defaultData;
    Map jsonCreate = {
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
      "available_banks": (available_banks != null) ? available_banks.map((res) => res!.toJson()).toList().cast<Map>() : null,
      "available_retail_outlets": (available_retail_outlets != null) ? available_retail_outlets.map((res) => res!.toJson()).toList().cast<Map>() : null,
      "available_ewallets": (available_ewallets != null) ? available_ewallets.map((res) => res!.toJson()).toList().cast<Map>() : null,
      "available_qr_codes": (available_qr_codes != null) ? available_qr_codes.map((res) => res!.toJson()).toList().cast<Map>() : null,
      "available_direct_debits": available_direct_debits,
      "available_paylaters": available_paylaters,
      "should_exclude_credit_card": should_exclude_credit_card,
      "should_send_email": should_send_email,
      "created": created,
      "updated": updated,
      "currency": currency,
      "customer_notification_preference": (customer_notification_preference != null) ? customer_notification_preference.toJson() : null,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("GetInvoice ${e.toString()}, ${stack.toString()}");
      }
    });
    return GetInvoice(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GetInvoiceAvailableBanks {
  Map rawData;

  GetInvoiceAvailableBanks(this.rawData);

  static Map get defaultData {
    return {"bank_code": "MANDIRI", "collection_type": "POOL", "transfer_amount": 100000, "bank_branch": "Virtual Account", "account_holder_name": "HEXAMINATE", "identity_amount": 0};
  }

  String? get bank_code {
    try {
      if (rawData["bank_code"] is String == false) {
        return null;
      }
      return rawData["bank_code"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get collection_type {
    try {
      if (rawData["collection_type"] is String == false) {
        return null;
      }
      return rawData["collection_type"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get transfer_amount {
    try {
      if (rawData["transfer_amount"] is int == false) {
        return null;
      }
      return rawData["transfer_amount"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get bank_branch {
    try {
      if (rawData["bank_branch"] is String == false) {
        return null;
      }
      return rawData["bank_branch"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get account_holder_name {
    try {
      if (rawData["account_holder_name"] is String == false) {
        return null;
      }
      return rawData["account_holder_name"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get identity_amount {
    try {
      if (rawData["identity_amount"] is int == false) {
        return null;
      }
      return rawData["identity_amount"] as int;
    } catch (e) {
      return null;
    }
  }

  static GetInvoiceAvailableBanks create({
    String? bank_code,
    String? collection_type,
    int? transfer_amount,
    String? bank_branch,
    String? account_holder_name,
    int? identity_amount,
  }) {
    Map jsonData = GetInvoiceAvailableBanks.defaultData;
    Map jsonCreate = {
      "bank_code": bank_code,
      "collection_type": collection_type,
      "transfer_amount": transfer_amount,
      "bank_branch": bank_branch,
      "account_holder_name": account_holder_name,
      "identity_amount": identity_amount,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("GetInvoiceAvailableBanks ${e.toString()}, ${stack.toString()}");
      }
    });
    return GetInvoiceAvailableBanks(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GetInvoiceAvailableRetailOutlets {
  Map rawData;

  GetInvoiceAvailableRetailOutlets(this.rawData);

  static Map get defaultData {
    return {"retail_outlet_name": "ALFAMART"};
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

  static GetInvoiceAvailableRetailOutlets create({
    String? retail_outlet_name,
  }) {
    Map jsonData = GetInvoiceAvailableRetailOutlets.defaultData;
    Map jsonCreate = {
      "retail_outlet_name": retail_outlet_name,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("GetInvoiceAvailableRetailOutlets ${e.toString()}, ${stack.toString()}");
      }
    });
    return GetInvoiceAvailableRetailOutlets(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GetInvoiceAvailableEwallets {
  Map rawData;

  GetInvoiceAvailableEwallets(this.rawData);

  static Map get defaultData {
    return {"ewallet_type": "OVO"};
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

  static GetInvoiceAvailableEwallets create({
    String? ewallet_type,
  }) {
    Map jsonData = GetInvoiceAvailableEwallets.defaultData;
    Map jsonCreate = {
      "ewallet_type": ewallet_type,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("GetInvoiceAvailableEwallets ${e.toString()}, ${stack.toString()}");
      }
    });
    return GetInvoiceAvailableEwallets(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GetInvoiceAvailableQrCodes {
  Map rawData;

  GetInvoiceAvailableQrCodes(this.rawData);

  static Map get defaultData {
    return {"qr_code_type": "QRIS"};
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

  static GetInvoiceAvailableQrCodes create({
    String? qr_code_type,
  }) {
    Map jsonData = GetInvoiceAvailableQrCodes.defaultData;
    Map jsonCreate = {
      "qr_code_type": qr_code_type,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("GetInvoiceAvailableQrCodes ${e.toString()}, ${stack.toString()}");
      }
    });
    return GetInvoiceAvailableQrCodes(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GetInvoiceCustomerNotificationPreference {
  Map rawData;

  GetInvoiceCustomerNotificationPreference(this.rawData);

  static Map get defaultData {
    return {"invoice_created": [], "invoice_reminder": [], "invoice_expired": [], "invoice_paid": []};
  }

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

  static GetInvoiceCustomerNotificationPreference create({
    List<Object?>? invoice_created,
    List<Object?>? invoice_reminder,
    List<Object?>? invoice_expired,
    List<Object?>? invoice_paid,
  }) {
    Map jsonData = GetInvoiceCustomerNotificationPreference.defaultData;
    Map jsonCreate = {
      "invoice_created": invoice_created,
      "invoice_reminder": invoice_reminder,
      "invoice_expired": invoice_expired,
      "invoice_paid": invoice_paid,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("GetInvoiceCustomerNotificationPreference ${e.toString()}, ${stack.toString()}");
      }
    });
    return GetInvoiceCustomerNotificationPreference(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}
