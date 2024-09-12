

import 'package:xendit/scheme/respond_scheme/account.dart';
 import 'package:xendit/xendit_core.dart';

extension XenditExtensiongetAccount on Xendit {
  
  Future<Account> getAccount({
    required String id,
    Map<String, String>? headers,
  }) async {
    return await invokeBuilder(
      endpoint: "GET https://api.xendit.co/v2/accounts/${id}",
      headers: headers,
      onResult: (result) {
        return Account(result);
      },
    );
  }
}