/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myBalanceResponseNode = BalanceResponse.fromJson(map);
*/ 
part of xendit;
class BalanceResponse {
    int? balance;

    BalanceResponse({this.balance}); 

    BalanceResponse.fromJson(Map<String, dynamic> json) {
        balance = json['balance'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['balance'] = balance;
        return data;
    }
}

