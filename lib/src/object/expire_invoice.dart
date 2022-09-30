// ignore_for_file: non_constant_identifier_names

part of xendit;

/// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
class ExpireInvoiceResponse {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
  ExpireInvoiceResponse(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
  String? get payer_email {
    try {
      if (rawData["payer_email"] is String == false) {
        return null;
      }
      return rawData["payer_email"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
  String? get description {
    try {
      if (rawData["description"] is String == false) {
        return null;
      }
      return rawData["description"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
  List<ExpireInvoiceResponseAvailableBanks?>? get available_banks {
    try {
      if (rawData["available_banks"] is List == false) {
        return null;
      }
      return (rawData["available_banks"] as List)
          .map((e) => ExpireInvoiceResponseAvailableBanks(e as Map))
          .toList()
          .cast<ExpireInvoiceResponseAvailableBanks>();
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
  List<ExpireInvoiceResponseAvailableRetailOutlets?>?
      get available_retail_outlets {
    try {
      if (rawData["available_retail_outlets"] is List == false) {
        return null;
      }
      return (rawData["available_retail_outlets"] as List)
          .map((e) => ExpireInvoiceResponseAvailableRetailOutlets(e as Map))
          .toList()
          .cast<ExpireInvoiceResponseAvailableRetailOutlets>();
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
class ExpireInvoiceResponseAvailableBanks {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
  ExpireInvoiceResponseAvailableBanks(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
  int? get bank_account_number {
    try {
      if (rawData["bank_account_number"] is int == false) {
        return null;
      }
      return rawData["bank_account_number"] as int;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
class ExpireInvoiceResponseAvailableRetailOutlets {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
  ExpireInvoiceResponseAvailableRetailOutlets(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
  String? get payment_code {
    try {
      if (rawData["payment_code"] is String == false) {
        return null;
      }
      return rawData["payment_code"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
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
