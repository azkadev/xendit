/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myXenPlatformFeeRuleResponseNode = XenPlatformFeeRuleResponse.fromJson(map);
*/
part of xendit; 


/// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
class XenPlatFormCreateFeeRuleResponse {
  late Map rawData;

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  XenPlatFormCreateFeeRuleResponse(this.rawData);


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get id {
    try {
      if (rawData["id"] is String == false){
        return null;
      }
      return rawData["id"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get name {
    try {
      if (rawData["name"] is String == false){
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get description {
    try {
      if (rawData["description"] is String == false){
        return null;
      }
      return rawData["description"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  XenPlatFormCreateFeeRuleResponseRoutes? get routes {
    try {
      if (rawData["routes"] is Map == false){
        return null;
      }
      return XenPlatFormCreateFeeRuleResponseRoutes(rawData["routes"] as Map);
    } catch (e) {
      return null;
    }
  }


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
  String? get updated {
    try {
      if (rawData["updated"] is String == false){
        return null;
      }
      return rawData["updated"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  XenPlatFormCreateFeeRuleResponseMetadata? get metadata {
    try {
      if (rawData["metadata"] is Map == false){
        return null;
      }
      return XenPlatFormCreateFeeRuleResponseMetadata(rawData["metadata"] as Map);
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




/// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
class XenPlatFormCreateFeeRuleResponseRoutes {
  late Map rawData;

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  XenPlatFormCreateFeeRuleResponseRoutes(this.rawData);


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get unit {
    try {
      if (rawData["unit"] is String == false){
        return null;
      }
      return rawData["unit"] as String;
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


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get currency {
    try {
      if (rawData["currency"] is String == false){
        return null;
      }
      return rawData["currency"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get destination_account_id {
    try {
      if (rawData["destination_account_id"] is String == false){
        return null;
      }
      return rawData["destination_account_id"] as String;
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






/// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
class XenPlatFormCreateFeeRuleResponseMetadata {
  late Map rawData;

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  XenPlatFormCreateFeeRuleResponseMetadata(this.rawData);


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

