

import 'package:xendit/scheme/respond_scheme/invoice.dart';
import 'package:xendit/xendit_core.dart';

extension XenditExtensionsetInvoiceExpireByInvoiceId on Xendit {
  
  Future<Invoice> setInvoiceExpireByInvoiceId({
    String forUserId = "",
    required String invoice_id,
  }) async {
    return await invokeBuilder(
      endpoint: "POST https://api.xendit.co/invoices/${invoice_id}/expire!",
      headers: {
        "for-user-id": forUserId,
      },
      onResult: (result) {
        return Invoice(result);
      },
    );
  }

}