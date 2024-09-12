

 import 'package:xendit/scheme/respond_scheme/pay_out_link.dart';
import 'package:xendit/xendit_core.dart';

extension XenditExtensiongetPayOutLinkById on Xendit {
  
  Future<PayOutLink> getPayOutLinkById({
    String forUserId = "",
    required String id,
  }) async {
    return await invokeBuilder(
      endpoint: "GET https://api.xendit.co/payouts/${id}",
      headers: {
        "for-user-id": forUserId,
      },
      onResult: (result) {
        return PayOutLink(result);
      },
    );
  }

}