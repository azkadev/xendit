/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myBalanceResponseNode = BalanceResponse.fromJson(map);
*/
part of xendit;

/// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
class GetBalanceResponse {
  late Map rawData;

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
  GetBalanceResponse(this.rawData);

  /// full information [create-invoice](https://developers.xendit.co/api-reference/#expire-invoice)
  int? get balance {
    try {
      if (rawData["balance"] is int == false) {
        return null;
      }
      return rawData["balance"] as int;
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
