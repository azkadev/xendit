part of xendit; 

/// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-payout)
class PayoutResponse {
  late Map rawData;

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-payout)
  PayoutResponse(this.rawData);


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-payout)
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


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-payout)
  String? get external_id {
    try {
      if (rawData["external_id"] is String == false){
        return null;
      }
      return rawData["external_id"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-payout)
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


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-payout)
  String? get merchant_name {
    try {
      if (rawData["merchant_name"] is String == false){
        return null;
      }
      return rawData["merchant_name"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-payout)
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


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-payout)
  String? get expiration_timestamp {
    try {
      if (rawData["expiration_timestamp"] is String == false){
        return null;
      }
      return rawData["expiration_timestamp"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-payout)
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


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-payout)
  String? get payout_url {
    try {
      if (rawData["payout_url"] is String == false){
        return null;
      }
      return rawData["payout_url"] as String;
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

 

/// full information [docs-ofc](https://developers.xendit.co/api-reference/#void-payout)
class VoidPayoutResponse {
  late Map rawData;

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#void-payout)
  VoidPayoutResponse(this.rawData);


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#void-payout)
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


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#void-payout)
  String? get external_id {
    try {
      if (rawData["external_id"] is String == false){
        return null;
      }
      return rawData["external_id"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#void-payout)
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


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#void-payout)
  String? get merchant_name {
    try {
      if (rawData["merchant_name"] is String == false){
        return null;
      }
      return rawData["merchant_name"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#void-payout)
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


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#void-payout)
  String? get expiration_timestamp {
    try {
      if (rawData["expiration_timestamp"] is String == false){
        return null;
      }
      return rawData["expiration_timestamp"] as String;
    } catch (e) {
      return null;
    }
  }


  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#void-payout)
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

