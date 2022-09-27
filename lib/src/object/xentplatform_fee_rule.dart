/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myXenPlatformFeeRuleResponseNode = XenPlatformFeeRuleResponse.fromJson(map);
*/
part of xendit;
 
/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myXenPlatformFeeRuleResponseNode = XenPlatformFeeRuleResponse.fromJson(map);
*/ 
class Metadata {

    Metadata(); 

}

class XenPlatformFeeRuleResponse {
    String? id;
    String? name;
    String? description;
    Routes? routes;
    String? created;
    String? updated; 

    XenPlatformFeeRuleResponse({this.id, this.name, this.description, this.routes, this.created, this.updated,}); 

    XenPlatformFeeRuleResponse.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        description = json['description'];
        routes = json['routes'] != null ? Routes?.fromJson(json['routes']) : null;
        created = json['created'];
        updated = json['updated']; 
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['id'] = id;
        data['name'] = name;
        data['description'] = description;
        data['routes'] = routes!.toJson();
        data['created'] = created;
        data['updated'] = updated; 
        return data;
    }
}

class Routes {
    String? unit;
    int? amount;
    String? currency;
    String? destinationaccountid;

    Routes({this.unit, this.amount, this.currency, this.destinationaccountid}); 

    Routes.fromJson(Map<String, dynamic> json) {
        unit = json['unit'];
        amount = json['amount'];
        currency = json['currency'];
        destinationaccountid = json['destination_account_id'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['unit'] = unit;
        data['amount'] = amount;
        data['currency'] = currency;
        data['destination_account_id'] = destinationaccountid;
        return data;
    }
}

