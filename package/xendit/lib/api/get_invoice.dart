

import 'package:xendit/scheme/respond_scheme/invoice.dart';
import 'package:xendit/xendit_core.dart';

extension XenditExtensionGetInvoice on Xendit {
  Future<Invoice> getInvoice({
    String forUserId = "",
    required String invoice_id,
  }) async {
    return await invokeBuilder(
      endpoint: "GET https://api.xendit.co/v2/invoices/${invoice_id}",
      headers: {
        "for-user-id": forUserId,
      },
      onResult: (result) async {
        return Invoice(result);
      },
    );
  }
}