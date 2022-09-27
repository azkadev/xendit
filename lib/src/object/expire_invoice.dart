part of xendit;


/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/  

class ExpireInvoiceResponse {
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
    bool? shouldexcludecreditcard;
    bool? shouldsendemail;
    String? created;
    String? updated;

    ExpireInvoiceResponse({this.id, this.userid, this.externalid, this.status, this.merchantname, this.merchantprofilepictureurl, this.amount, this.payeremail, this.description, this.invoiceurl, this.expirydate, this.availablebanks, this.availableretailoutlets, this.shouldexcludecreditcard, this.shouldsendemail, this.created, this.updated}); 

    ExpireInvoiceResponse.fromJson(Map<String, dynamic> json) {
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
        shouldexcludecreditcard = json['should_exclude_credit_card'];
        shouldsendemail = json['should_send_email'];
        created = json['created'];
        updated = json['updated'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
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
        data['available_banks'] =availablebanks != null ? availablebanks!.map((v) => v?.toJson()).toList() : null;
        data['available_retail_outlets'] =availableretailoutlets != null ? availableretailoutlets!.map((v) => v?.toJson()).toList() : null;
        data['should_exclude_credit_card'] = shouldexcludecreditcard;
        data['should_send_email'] = shouldsendemail;
        data['created'] = created;
        data['updated'] = updated;
        return data;
    }
}

