/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/
part of xendit; 

/// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
class XenPlatFormCreateTransferResponse {
  late Map rawData;

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  XenPlatFormCreateTransferResponse(this.rawData);


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get created {
    try {
      if (rawData["created"] is String == false){
        return null;
      }
      return rawData["created"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get transfer_id {
    try {
      if (rawData["transfer_id"] is String == false){
        return null;
      }
      return rawData["transfer_id"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get reference {
    try {
      if (rawData["reference"] is String == false){
        return null;
      }
      return rawData["reference"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get source_user_id {
    try {
      if (rawData["source_user_id"] is String == false){
        return null;
      }
      return rawData["source_user_id"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get destination_user_id {
    try {
      if (rawData["destination_user_id"] is String == false){
        return null;
      }
      return rawData["destination_user_id"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get status {
    try {
      if (rawData["status"] is String == false){
        return null;
      }
      return rawData["status"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  int? get amount {
    try {
      if (rawData["amount"] is int == false){
        return null;
      }
      return rawData["amount"] as int;
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

