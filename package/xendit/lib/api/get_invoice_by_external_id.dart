

import 'package:xendit/scheme/respond_scheme/invoice.dart';
import 'package:xendit/xendit_core.dart';

extension XenditExtensionGetInvoiceByExternalId on Xendit {
  Future<Invoice> getInvoiceByExternalId({
    String forUserId = "",
    required String external_id,
  }) async {
    return await invokeBuilder(
      endpoint: "GET https://api.xendit.co/v2/invoices/?external_id=${external_id}",
      headers: {
        "for-user-id": forUserId,
      },
      onResult: (result) {
        return Invoice(result);
      },
    );
  }
}