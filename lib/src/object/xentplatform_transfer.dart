/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/
part of xendit;

class XenPlatformTransfer {
  String? created;
  String? transferid;
  String? reference;
  String? sourceuserid;
  String? destinationuserid;
  String? status;
  int? amount;

  XenPlatformTransfer({this.created, this.transferid, this.reference, this.sourceuserid, this.destinationuserid, this.status, this.amount});

  XenPlatformTransfer.fromJson(Map<String, dynamic> json) {
    created = json['created'];
    transferid = json['transfer_id'];
    reference = json['reference'];
    sourceuserid = json['source_user_id'];
    destinationuserid = json['destination_user_id'];
    status = json['status'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created'] = created;
    data['transfer_id'] = transferid;
    data['reference'] = reference;
    data['source_user_id'] = sourceuserid;
    data['destination_user_id'] = destinationuserid;
    data['status'] = status;
    data['amount'] = amount;
    return data;
  }
}

/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/ 
class XenPlatformTransferReference {
    String? created;
    String? transferid;
    String? reference;
    String? sourceuserid;
    String? destinationuserid;
    String? status;
    int? amount;

    XenPlatformTransferReference({this.created, this.transferid, this.reference, this.sourceuserid, this.destinationuserid, this.status, this.amount}); 

    XenPlatformTransferReference.fromJson(Map<String, dynamic> json) {
        created = json['created'];
        transferid = json['transfer_id'];
        reference = json['reference'];
        sourceuserid = json['source_user_id'];
        destinationuserid = json['destination_user_id'];
        status = json['status'];
        amount = json['amount'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['created'] = created;
        data['transfer_id'] = transferid;
        data['reference'] = reference;
        data['source_user_id'] = sourceuserid;
        data['destination_user_id'] = destinationuserid;
        data['status'] = status;
        data['amount'] = amount;
        return data;
    }
}

