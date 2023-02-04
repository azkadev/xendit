// ignore_for_file: non_constant_identifier_names
import 'dart:convert';



class Account {
  Map rawData;

  
  Account(this.rawData);
   
  static Map get defaultData {
    return {"@type":"ok","id":"63dea4d4adffcf7008873f2e","created":"2023-02-04T18:32:52.889Z","updated":"2023-02-04T18:32:52.889Z","email":"jognitedev@gmail.com","type":"OWNED","public_profile":{"business_name":"RP"},"country":"ID","status":"REGISTERED"};
  }

  
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }


  
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


  
  String? get email {
    try {
      if (rawData["email"] is String == false){
        return null;
      }
      return rawData["email"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get type {
    try {
      if (rawData["type"] is String == false){
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  AccountPublicProfile get public_profile {
    try {
      if (rawData["public_profile"] is Map == false){
        return AccountPublicProfile({}); 
      }
      return AccountPublicProfile(rawData["public_profile"] as Map);
    } catch (e) {  
      return AccountPublicProfile({}); 
    }
  }


  
  String? get country {
    try {
      if (rawData["country"] is String == false){
        return null;
      }
      return rawData["country"] as String;
    } catch (e) {
      return null;
    }
  }


  
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


  
  static Account create({

    String? special_type,
    String? id,
    String? created,
    String? updated,
    String? email,
    String? type,
      AccountPublicProfile? public_profile,
    String? country,
    String? status,
})  {    Map jsonData = Account.defaultData;
    Map jsonCreate = {
  
      "@type": special_type,
      "id": id,
      "created": created,
      "updated": updated,
      "email": email,
      "type": type,
      "public_profile": (public_profile != null)?public_profile.toJson(): null,
      "country": country,
      "status": status,


  };


    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("Account ${e.toString()}, ${stack.toString()}");
      }
    });
return Account(jsonData);

      }
  /// operator map data
   operator [](key) {
    return rawData[key];
  }
 
  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
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





class AccountPublicProfile {
  Map rawData;

  
  AccountPublicProfile(this.rawData);
   
  static Map get defaultData {
    return {"business_name":"RP"};
  }

  
  String? get business_name {
    try {
      if (rawData["business_name"] is String == false){
        return null;
      }
      return rawData["business_name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static AccountPublicProfile create({

    String? business_name,
})  {    Map jsonData = AccountPublicProfile.defaultData;
    Map jsonCreate = {
  
      "business_name": business_name,


  };


    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("AccountPublicProfile ${e.toString()}, ${stack.toString()}");
      }
    });
return AccountPublicProfile(jsonData);

      }
  /// operator map data
   operator [](key) {
    return rawData[key];
  }
 
  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
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

