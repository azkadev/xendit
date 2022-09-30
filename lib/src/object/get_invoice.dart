// ignore_for_file: empty_catches, non_constant_identifier_names

part of xendit;

/// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
class GetInvoiceResponse {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  GetInvoiceResponse(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  List<GetInvoiceResponseAvailableBanks?>? get available_banks {
    try {
      if (rawData["available_banks"] is List == false) {
        return null;
      }
      return (rawData["available_banks"] as List)
          .map((e) => GetInvoiceResponseAvailableBanks(e as Map))
          .toList()
          .cast<GetInvoiceResponseAvailableBanks>();
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  List<GetInvoiceResponseAvailableRetailOutlets?>?
      get available_retail_outlets {
    try {
      if (rawData["available_retail_outlets"] is List == false) {
        return null;
      }
      return (rawData["available_retail_outlets"] as List)
          .map((e) => GetInvoiceResponseAvailableRetailOutlets(e as Map))
          .toList()
          .cast<GetInvoiceResponseAvailableRetailOutlets>();
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  List<GetInvoiceResponseAvailablePaylaters?>? get available_paylaters {
    try {
      if (rawData["available_paylaters"] is List == false) {
        return null;
      }
      return (rawData["available_paylaters"] as List)
          .map((e) => GetInvoiceResponseAvailablePaylaters(e as Map))
          .toList()
          .cast<GetInvoiceResponseAvailablePaylaters>();
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  String? get mid_label {
    try {
      if (rawData["mid_label"] is String == false) {
        return null;
      }
      return rawData["mid_label"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  String? get paid_at {
    try {
      if (rawData["paid_at"] is String == false) {
        return null;
      }
      return rawData["paid_at"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  String? get credit_card_charge_id {
    try {
      if (rawData["credit_card_charge_id"] is String == false) {
        return null;
      }
      return rawData["credit_card_charge_id"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  String? get payment_method {
    try {
      if (rawData["payment_method"] is String == false) {
        return null;
      }
      return rawData["payment_method"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  String? get payment_channel {
    try {
      if (rawData["payment_channel"] is String == false) {
        return null;
      }
      return rawData["payment_channel"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  String? get payment_destination {
    try {
      if (rawData["payment_destination"] is String == false) {
        return null;
      }
      return rawData["payment_destination"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  String? get success_redirect_url {
    try {
      if (rawData["success_redirect_url"] is String == false) {
        return null;
      }
      return rawData["success_redirect_url"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  String? get failure_redirect_url {
    try {
      if (rawData["failure_redirect_url"] is String == false) {
        return null;
      }
      return rawData["failure_redirect_url"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  bool? get fixed_va {
    try {
      if (rawData["fixed_va"] is bool == false) {
        return null;
      }
      return rawData["fixed_va"] as bool;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  String? get locale {
    try {
      if (rawData["locale"] is String == false) {
        return null;
      }
      return rawData["locale"] as String;
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
class GetInvoiceResponseAvailableBanks {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  GetInvoiceResponseAvailableBanks(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  String? get bank_account_number {
    try {
      if (rawData["bank_account_number"] is String == false) {
        return null;
      }
      return rawData["bank_account_number"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
class GetInvoiceResponseAvailableRetailOutlets {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  GetInvoiceResponseAvailableRetailOutlets(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
class GetInvoiceResponseAvailablePaylaters {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  GetInvoiceResponseAvailablePaylaters(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#get-invoice)
  String? get paylater_type {
    try {
      if (rawData["paylater_type"] is String == false) {
        return null;
      }
      return rawData["paylater_type"] as String;
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
