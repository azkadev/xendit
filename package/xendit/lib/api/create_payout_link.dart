

 import 'package:xendit/scheme/respond_scheme/pay_out_link.dart';
import 'package:xendit/xendit_core.dart';

extension XenditExtensioncreatePayOutLink on Xendit {
  

  Future<PayOutLink> createPayOutLink({
    String forUserId = "",
    required String external_id,
    required int amount,
    required String email,
  }) async {
    return await invokeBuilder(
      endpoint: "POST https://api.xendit.co/payouts",
      headers: {
        "for-user-id": forUserId,
      },
      parameters: {
        "external_id": external_id,
        "amount": amount,
        "email": email,
      },
      onResult: (result) {
        return PayOutLink(result);
      },
    );
  }
}