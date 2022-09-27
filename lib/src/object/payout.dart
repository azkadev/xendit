part of xendit;

/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myPayOutResponseNode = PayOutResponse.fromJson(map);
*/ 
class PayOutResponse {
    String? id;
    String? externalid;
    int? amount;
    String? merchantname;
    String? status;
    String? expirationtimestamp;
    String? created;
    String? payouturl;

    PayOutResponse({this.id, this.externalid, this.amount, this.merchantname, this.status, this.expirationtimestamp, this.created, this.payouturl}); 

    PayOutResponse.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        externalid = json['external_id'];
        amount = json['amount'];
        merchantname = json['merchant_name'];
        status = json['status'];
        expirationtimestamp = json['expiration_timestamp'];
        created = json['created'];
        payouturl = json['payout_url'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['id'] = id;
        data['external_id'] = externalid;
        data['amount'] = amount;
        data['merchant_name'] = merchantname;
        data['status'] = status;
        data['expiration_timestamp'] = expirationtimestamp;
        data['created'] = created;
        data['payout_url'] = payouturl;
        return data;
    }
}

/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myVoidPayOutResponseNode = VoidPayOutResponse.fromJson(map);
*/ 
class VoidPayOutResponse {
    String? id;
    String? externalid;
    int? amount;
    String? merchantname;
    String? status;
    String? expirationtimestamp;
    String? created;

    VoidPayOutResponse({this.id, this.externalid, this.amount, this.merchantname, this.status, this.expirationtimestamp, this.created}); 

    VoidPayOutResponse.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        externalid = json['external_id'];
        amount = json['amount'];
        merchantname = json['merchant_name'];
        status = json['status'];
        expirationtimestamp = json['expiration_timestamp'];
        created = json['created'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['id'] = id;
        data['external_id'] = externalid;
        data['amount'] = amount;
        data['merchant_name'] = merchantname;
        data['status'] = status;
        data['expiration_timestamp'] = expirationtimestamp;
        data['created'] = created;
        return data;
    }
}



