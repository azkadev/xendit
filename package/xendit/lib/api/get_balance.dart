import 'package:xendit/scheme/respond_scheme/balance.dart';
import 'package:xendit/xendit_core.dart';

extension XenditExtensiongetBalance on Xendit {
  Future<Balance> getBalance({
    String forUserId = "",
    required String account_type,
  }) async {
    return await invokeBuilder(
      endpoint: "GET https://api.xendit.co/balance?account_type=${account_type}",
      headers: {
        "for-user-id": forUserId,
      },
      specialTypeSucces: "balance",
      onResult: (result) {
        return Balance(result);
      },
    );
  }
}
