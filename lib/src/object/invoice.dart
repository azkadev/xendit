// ignore_for_file: empty_catches

part of xendit;

class Address {
  String? city;
  String? country;
  String? postalcode;
  String? state;
  String? streetline1;
  String? streetline2;

  Address({this.city, this.country, this.postalcode, this.state, this.streetline1, this.streetline2});

  Address.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    country = json['country'];
    postalcode = json['postal_code'];
    state = json['state'];
    streetline1 = json['street_line1'];
    streetline2 = json['street_line2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city'] = city;
    data['country'] = country;
    data['postal_code'] = postalcode;
    data['state'] = state;
    data['street_line1'] = streetline1;
    data['street_line2'] = streetline2;
    return data;
  }
}

class AvailableBank {
  String? bankcode;
  String? collectiontype;
  int? transferamount;
  String? bankbranch;
  String? accountholdername;
  int? bankaccountnumber;
  AvailableBank({
    this.bankcode,
    this.collectiontype,
    this.transferamount,
    this.bankbranch,
    this.accountholdername,
    this.bankaccountnumber,
  });

  AvailableBank.fromJson(Map<String, dynamic> json) {
    bankcode = json['bank_code'];
    collectiontype = json['collection_type'];
    transferamount = json['transfer_amount'];
    bankbranch = json['bank_branch'];
    accountholdername = json['account_holder_name'];
    bankaccountnumber = json['bank_account_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bank_code'] = bankcode;
    data['collection_type'] = collectiontype;
    data['transfer_amount'] = transferamount;
    data['bank_branch'] = bankbranch;
    data['account_holder_name'] = accountholdername;
    data['bank_account_number'] = bankaccountnumber;
    return data;
  }
}

class AvailablePaylater {
  String? paylatertype;

  AvailablePaylater({this.paylatertype});

  AvailablePaylater.fromJson(Map<String, dynamic> json) {
    paylatertype = json['paylater_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['paylater_type'] = paylatertype;
    return data;
  }
}

class Customer {
  List<Address?>? addresses;
  String? email;
  String? givennames;
  String? mobilenumber;
  String? surname;

  Customer({this.addresses, this.email, this.givennames, this.mobilenumber, this.surname});

  Customer.fromJson(Map<String, dynamic> json) {
    if (json['addresses'] != null) {
      addresses = <Address>[];
      json['addresses'].forEach((v) {
        addresses!.add(Address.fromJson(v));
      });
    }
    email = json['email'];
    givennames = json['given_names'];
    mobilenumber = json['mobile_number'];
    surname = json['surname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['addresses'] = addresses != null ? addresses!.map((v) => v?.toJson()).toList() : null;
    data['email'] = email;
    data['given_names'] = givennames;
    data['mobile_number'] = mobilenumber;
    data['surname'] = surname;
    return data;
  }
}

class Fee {
  String? type;
  int? value;

  Fee({this.type, this.value});

  Fee.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['value'] = value;
    return data;
  }
}

class Item {
  String? name;
  int? quantity;
  int? price;
  String? category;
  String? url;

  Item({this.name, this.quantity, this.price, this.category, this.url});

  Item.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    quantity = json['quantity'];
    price = json['price'];
    category = json['category'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['quantity'] = quantity;
    data['price'] = price;
    data['category'] = category;
    data['url'] = url;
    return data;
  }
}

class InvoiceResponse {
  String? id;
  String? userid;
  String? externalid;
  String? status;
  String? merchantname;
  String? merchantprofilepictureurl;
  int? amount;
  String? payeremail;
  String? description;
  String? invoiceurl;
  String? expirydate;
  List<AvailableBank?>? availablebanks;
  List<AvailableRetailOutlet?>? availableretailoutlets;
  List<AvailablePaylater?>? availablepaylaters;
  bool? shouldexcludecreditcard;
  bool? shouldsendemail;
  String? created;
  String? updated;
  String? midlabel;
  String? currency;
  bool? fixedva;
  String? locale;
  Customer? customer;
  List<Item?>? items;
  List<Fee?>? fees;

  InvoiceResponse({
    this.id,
    this.userid,
    this.externalid,
    this.status,
    this.merchantname,
    this.merchantprofilepictureurl,
    this.amount,
    this.payeremail,
    this.description,
    this.invoiceurl,
    this.expirydate,
    this.availablebanks,
    this.availableretailoutlets,
    this.availablepaylaters,
    this.shouldexcludecreditcard,
    this.shouldsendemail,
    this.created,
    this.updated,
    this.midlabel,
    this.currency,
    this.fixedva,
    this.locale,
    this.customer,
    this.items,
    this.fees,
  });

  InvoiceResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userid = json['user_id'];
    externalid = json['external_id'];
    status = json['status'];
    merchantname = json['merchant_name'];
    merchantprofilepictureurl = json['merchant_profile_picture_url'];
    amount = json['amount'];
    payeremail = json['payer_email'];
    description = json['description'];
    invoiceurl = json['invoice_url'];
    expirydate = json['expiry_date'];
    if (json['available_banks'] != null) {
      availablebanks = <AvailableBank>[];
      json['available_banks'].forEach((v) {
        availablebanks!.add(AvailableBank.fromJson(v));
      });
    }
    if (json['available_retail_outlets'] != null) {
      availableretailoutlets = <AvailableRetailOutlet>[];
      json['available_retail_outlets'].forEach((v) {
        availableretailoutlets!.add(AvailableRetailOutlet.fromJson(v));
      });
    }
    if (json['available_paylaters'] != null) {
      availablepaylaters = <AvailablePaylater>[];
      json['available_paylaters'].forEach((v) {
        availablepaylaters!.add(AvailablePaylater.fromJson(v));
      });
    }
    shouldexcludecreditcard = json['should_exclude_credit_card'];
    shouldsendemail = json['should_send_email'];
    created = json['created'];
    updated = json['updated'];
    midlabel = json['mid_label'];
    currency = json['currency'];
    fixedva = json['fixed_va'];
    locale = json['locale'];
    customer = json['customer'] != null ? Customer?.fromJson(json['customer']) : null;
    if (json['items'] != null) {
      items = <Item>[];
      json['items'].forEach((v) {
        items!.add(Item.fromJson(v));
      });
    }
    if (json['fees'] != null) {
      fees = <Fee>[];
      json['fees'].forEach((v) {
        fees!.add(Fee.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userid;
    data['external_id'] = externalid;
    data['status'] = status;
    data['merchant_name'] = merchantname;
    data['merchant_profile_picture_url'] = merchantprofilepictureurl;
    data['amount'] = amount;
    data['payer_email'] = payeremail;
    data['description'] = description;
    data['invoice_url'] = invoiceurl;
    data['expiry_date'] = expirydate;
    data['available_banks'] = availablebanks != null ? availablebanks!.map((v) => v?.toJson()).toList() : null;
    data['available_retail_outlets'] = availableretailoutlets != null ? availableretailoutlets!.map((v) => v?.toJson()).toList() : null;
    data['available_paylaters'] = availablepaylaters != null ? availablepaylaters!.map((v) => v?.toJson()).toList() : null;
    data['should_exclude_credit_card'] = shouldexcludecreditcard;
    data['should_send_email'] = shouldsendemail;
    data['created'] = created;
    data['updated'] = updated;
    data['mid_label'] = midlabel;
    data['currency'] = currency;
    data['fixed_va'] = fixedva;
    data['locale'] = locale;
    try {
      data['customer'] = customer!.toJson();
    } catch (e) {}
    data['items'] = items != null ? items!.map((v) => v?.toJson()).toList() : null;
    data['fees'] = fees != null ? fees!.map((v) => v?.toJson()).toList() : null;
    return data;
  }
}
