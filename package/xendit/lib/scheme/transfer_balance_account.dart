// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class TransferBalanceAccount {
  Map rawData;

  TransferBalanceAccount(this.rawData);

  static Map get defaultData {
    return {
      "created": "2020-01-01T08:51:44.484Z",
      "transfer_id": "60b9d810-d9a3-456c-abbf-2786ec7a9651",
      "reference": "transfer001",
      "source_user_id": "54afeb170a2b18519b1b8768",
      "destination_user_id": "5cafeb170a2b1851246b8768",
      "status": "SUCCESSFUL",
      "amount": 10000
    };
  }

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

  String? get transfer_id {
    try {
      if (rawData["transfer_id"] is String == false) {
        return null;
      }
      return rawData["transfer_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get reference {
    try {
      if (rawData["reference"] is String == false) {
        return null;
      }
      return rawData["reference"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get source_user_id {
    try {
      if (rawData["source_user_id"] is String == false) {
        return null;
      }
      return rawData["source_user_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get destination_user_id {
    try {
      if (rawData["destination_user_id"] is String == false) {
        return null;
      }
      return rawData["destination_user_id"] as String;
    } catch (e) {
      return null;
    }
  }

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

  int? get amount {
    try {
      if (rawData["amount"] is int == false) {
        return null;
      }
      return rawData["amount"] as int;
    } catch (e) {
      return null;
    }
  }

  static TransferBalanceAccount create({
    String? created,
    String? transfer_id,
    String? reference,
    String? source_user_id,
    String? destination_user_id,
    String? status,
    int? amount,
  }) {
    Map jsonData = TransferBalanceAccount.defaultData;
    Map jsonCreate = {
      "created": created,
      "transfer_id": transfer_id,
      "reference": reference,
      "source_user_id": source_user_id,
      "destination_user_id": destination_user_id,
      "status": status,
      "amount": amount,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("TransferBalanceAccount ${e.toString()}, ${stack.toString()}");
      }
    });
    return TransferBalanceAccount(jsonData);
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
