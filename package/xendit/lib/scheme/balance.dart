// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class Balance {
  Map rawData;

  Balance(this.rawData);

  static Map get defaultData {
    return {"balance": 1241231};
  }

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

  static Balance create({
    int? balance,
  }) {
    Map jsonData = Balance.defaultData;
    Map jsonCreate = {
      "balance": balance,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("Balance ${e.toString()}, ${stack.toString()}");
      }
    });
    return Balance(jsonData);
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
