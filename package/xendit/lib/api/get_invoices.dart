import 'package:xendit/scheme/respond_scheme/invoices.dart';
import 'package:xendit/xendit_core.dart';

extension XenditExtensionGetInvoices on Xendit {
  Future<Invoices> getInvoices({
    String forUserId = "",
  }) async {
    return await invokeBuilder(
      endpoint: "GET https://api.xendit.co/v2/invoices",
      headers: {
        "for-user-id": forUserId,
      },
      onResult: (result) {
        return Invoices(result);
      },
    );
  }
}
