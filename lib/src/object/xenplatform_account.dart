/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myXenPlatformAccountNode = XenPlatformAccount.fromJson(map);
*/
part of xendit;

/// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
class XenPlatFormAccount {
  late Map rawData;

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  XenPlatFormAccount(this.rawData);

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get id {
    try {
      if (rawData["id"] is String == false) {
        return null;
      }
      return rawData["id"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get created {
    try {
      if (rawData["created"] is String == false) {
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
      if (rawData["updated"] is String == false) {
        return null;
      }
      return rawData["updated"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get type {
    try {
      if (rawData["type"] is String == false) {
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get email {
    try {
      if (rawData["email"] is String == false) {
        return null;
      }
      return rawData["email"] as String;
    } catch (e) {
      return null;
    }
  }

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  XenPlatFormAccountPublicProfile? get public_profile {
    try {
      if (rawData["public_profile"] is Map == false) {
        return null;
      }
      return XenPlatFormAccountPublicProfile(rawData["public_profile"] as Map);
    } catch (e) {
      return null;
    }
  }

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get status {
    try {
      if (rawData["status"] is String == false) {
        return null;
      }
      return rawData["status"] as String;
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
class XenPlatFormAccountPublicProfile {
  late Map rawData;

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  XenPlatFormAccountPublicProfile(this.rawData);

  /// full information [docs-ofc](https://developers.xendit.co/api-reference/#create-account)
  String? get business_name {
    try {
      if (rawData["business_name"] is String == false) {
        return null;
      }
      return rawData["business_name"] as String;
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
