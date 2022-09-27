// ignore_for_file: empty_catches

part of xendit;

/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/

class AvailableRetailOutlet {
  String? retailoutletname;
  String? paymentcode;
  int? transferamount;

  AvailableRetailOutlet({this.retailoutletname, this.paymentcode, this.transferamount});

  AvailableRetailOutlet.fromJson(Map<String, dynamic> json) {
    retailoutletname = json['retail_outlet_name'];
    try {
      paymentcode = json['payment_code'];
    } catch (e) {}
    try {
      transferamount = json['transfer_amount'];
    } catch (e) {}
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['retail_outlet_name'] = retailoutletname;
    try {
      data['payment_code'] = paymentcode;
    } catch (e) {}
    try {
      data['transfer_amount'] = transferamount;
    } catch (e) {}
    return data;
  }
}

class GetInvoiceResponse {
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
  String? paidat;
  String? creditcardchargeid;
  String? paymentmethod;
  String? paymentchannel;
  String? paymentdestination;
  String? successredirecturl;
  String? failureredirecturl;
  bool? fixedva;
  String? locale;

  GetInvoiceResponse({this.id, this.userid, this.externalid, this.status, this.merchantname, this.merchantprofilepictureurl, this.amount, this.payeremail, this.description, this.invoiceurl, this.expirydate, this.availablebanks, this.availableretailoutlets, this.availablepaylaters, this.shouldexcludecreditcard, this.shouldsendemail, this.created, this.updated, this.midlabel, this.currency, this.paidat, this.creditcardchargeid, this.paymentmethod, this.paymentchannel, this.paymentdestination, this.successredirecturl, this.failureredirecturl, this.fixedva, this.locale});

  GetInvoiceResponse.fromJson(Map<String, dynamic> json) {
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
    paidat = json['paid_at'];
    creditcardchargeid = json['credit_card_charge_id'];
    paymentmethod = json['payment_method'];
    paymentchannel = json['payment_channel'];
    paymentdestination = json['payment_destination'];
    successredirecturl = json['success_redirect_url'];
    failureredirecturl = json['failure_redirect_url'];
    fixedva = json['fixed_va'];
    locale = json['locale'];
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
    data['paid_at'] = paidat;
    data['credit_card_charge_id'] = creditcardchargeid;
    data['payment_method'] = paymentmethod;
    data['payment_channel'] = paymentchannel;
    data['payment_destination'] = paymentdestination;
    data['success_redirect_url'] = successredirecturl;
    data['failure_redirect_url'] = failureredirecturl;
    data['fixed_va'] = fixedva;
    data['locale'] = locale;
    return data;
  }
}
