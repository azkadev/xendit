// ignore_for_file: empty_catches, non_constant_identifier_names

part of xendit;

/// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
class CreateInvoiceResponse {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  CreateInvoiceResponse(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  List<CreateInvoiceResponseAvailableBanks?>? get available_banks {
    try {
      if (rawData["available_banks"] is List == false) {
        return null;
      }
      return (rawData["available_banks"] as List)
          .map((e) => CreateInvoiceResponseAvailableBanks(e as Map))
          .toList()
          .cast<CreateInvoiceResponseAvailableBanks>();
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  List<CreateInvoiceResponseAvailableRetailOutlets?>?
      get available_retail_outlets {
    try {
      if (rawData["available_retail_outlets"] is List == false) {
        return null;
      }
      return (rawData["available_retail_outlets"] as List)
          .map((e) => CreateInvoiceResponseAvailableRetailOutlets(e as Map))
          .toList()
          .cast<CreateInvoiceResponseAvailableRetailOutlets>();
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  List<CreateInvoiceResponseAvailablePaylaters?>? get available_paylaters {
    try {
      if (rawData["available_paylaters"] is List == false) {
        return null;
      }
      return (rawData["available_paylaters"] as List)
          .map((e) => CreateInvoiceResponseAvailablePaylaters(e as Map))
          .toList()
          .cast<CreateInvoiceResponseAvailablePaylaters>();
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  CreateInvoiceResponseCustomer? get customer {
    try {
      if (rawData["customer"] is Map == false) {
        return null;
      }
      return CreateInvoiceResponseCustomer(rawData["customer"] as Map);
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  List<CreateInvoiceResponseItems?>? get items {
    try {
      if (rawData["items"] is List == false) {
        return null;
      }
      return (rawData["items"] as List)
          .map((e) => CreateInvoiceResponseItems(e as Map))
          .toList()
          .cast<CreateInvoiceResponseItems>();
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  List<CreateInvoiceResponseFees?>? get fees {
    try {
      if (rawData["fees"] is List == false) {
        return null;
      }
      return (rawData["fees"] as List)
          .map((e) => CreateInvoiceResponseFees(e as Map))
          .toList()
          .cast<CreateInvoiceResponseFees>();
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
class CreateInvoiceResponseAvailableBanks {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  CreateInvoiceResponseAvailableBanks(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
class CreateInvoiceResponseAvailableRetailOutlets {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  CreateInvoiceResponseAvailableRetailOutlets(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
class CreateInvoiceResponseAvailablePaylaters {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  CreateInvoiceResponseAvailablePaylaters(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
class CreateInvoiceResponseCustomer {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  CreateInvoiceResponseCustomer(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  List<CreateInvoiceResponseCustomerAddresses?>? get addresses {
    try {
      if (rawData["addresses"] is List == false) {
        return null;
      }
      return (rawData["addresses"] as List)
          .map((e) => CreateInvoiceResponseCustomerAddresses(e as Map))
          .toList()
          .cast<CreateInvoiceResponseCustomerAddresses>();
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
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

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get given_names {
    try {
      if (rawData["given_names"] is String == false) {
        return null;
      }
      return rawData["given_names"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get mobile_number {
    try {
      if (rawData["mobile_number"] is String == false) {
        return null;
      }
      return rawData["mobile_number"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get surname {
    try {
      if (rawData["surname"] is String == false) {
        return null;
      }
      return rawData["surname"] as String;
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
class CreateInvoiceResponseCustomerAddresses {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  CreateInvoiceResponseCustomerAddresses(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get city {
    try {
      if (rawData["city"] is String == false) {
        return null;
      }
      return rawData["city"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get country {
    try {
      if (rawData["country"] is String == false) {
        return null;
      }
      return rawData["country"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get postal_code {
    try {
      if (rawData["postal_code"] is String == false) {
        return null;
      }
      return rawData["postal_code"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get state {
    try {
      if (rawData["state"] is String == false) {
        return null;
      }
      return rawData["state"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get street_line1 {
    try {
      if (rawData["street_line1"] is String == false) {
        return null;
      }
      return rawData["street_line1"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get street_line2 {
    try {
      if (rawData["street_line2"] is String == false) {
        return null;
      }
      return rawData["street_line2"] as String;
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
class CreateInvoiceResponseItems {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  CreateInvoiceResponseItems(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get name {
    try {
      if (rawData["name"] is String == false) {
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  int? get quantity {
    try {
      if (rawData["quantity"] is int == false) {
        return null;
      }
      return rawData["quantity"] as int;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  int? get price {
    try {
      if (rawData["price"] is int == false) {
        return null;
      }
      return rawData["price"] as int;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get category {
    try {
      if (rawData["category"] is String == false) {
        return null;
      }
      return rawData["category"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get url {
    try {
      if (rawData["url"] is String == false) {
        return null;
      }
      return rawData["url"] as String;
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

/// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
class CreateInvoiceResponseFees {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  CreateInvoiceResponseFees(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  String? get type {
    try {
      if (rawData["type"] is String == false) {
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#create-invoice)
  int? get value {
    try {
      if (rawData["value"] is int == false) {
        return null;
      }
      return rawData["value"] as int;
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
