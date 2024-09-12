// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class TransactionBalanceAccount extends JsonScheme {
  TransactionBalanceAccount(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "transactionBalanceAccount",
      "transfer_id": "60b9d810-d9a3-456c-abbf-2786ec7a9651",
      "reference": "transfer001",
      "source_user_id": "54afeb170a2b18519b1b8768",
      "destination_user_id": "5cafeb170a2b1851246b8768",
      "status": "SUCCESSFUL",
      "amount": 10000
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == transactionBalanceAccount
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [TransactionBalanceAccount]
  /// Empty
  static TransactionBalanceAccount empty() {
    return TransactionBalanceAccount({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
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

  set transfer_id(String? value) {
    rawData["transfer_id"] = value;
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

  set reference(String? value) {
    rawData["reference"] = value;
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

  set source_user_id(String? value) {
    rawData["source_user_id"] = value;
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

  set destination_user_id(String? value) {
    rawData["destination_user_id"] = value;
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

  set status(String? value) {
    rawData["status"] = value;
  }

  num? get amount {
    try {
      if (rawData["amount"] is num == false) {
        return null;
      }
      return rawData["amount"] as num;
    } catch (e) {
      return null;
    }
  }

  set amount(num? value) {
    rawData["amount"] = value;
  }

  static TransactionBalanceAccount create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "transactionBalanceAccount",
    String? transfer_id,
    String? reference,
    String? source_user_id,
    String? destination_user_id,
    String? status,
    num? amount,
  }) {
    // TransactionBalanceAccount transactionBalanceAccount = TransactionBalanceAccount({
    final Map transactionBalanceAccount_data_create_json = {
      "@type": special_type,
      "transfer_id": transfer_id,
      "reference": reference,
      "source_user_id": source_user_id,
      "destination_user_id": destination_user_id,
      "status": status,
      "amount": amount,
    };

    transactionBalanceAccount_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (transactionBalanceAccount_data_create_json.containsKey(key) ==
            false) {
          transactionBalanceAccount_data_create_json[key] = value;
        }
      });
    }
    return TransactionBalanceAccount(
        transactionBalanceAccount_data_create_json);
  }
}
