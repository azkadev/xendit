

import 'package:xendit/scheme/respond_scheme/invoice.dart';
import 'package:xendit/xendit_core.dart';

extension XenditExtensionCreateInvoice on Xendit {

  /// invoices
  Future<Invoice> createInvoice({
    String forUserId = "",
    String withFeeRule = "",
    required String external_id,
    required int amount,
    String? description,
    String? payer_email,
    Map? customer,
    Map? customer_notification_preference,
    int? invoice_duration,
    String? success_redirect_url,
    String? failure_redirect_url,
    List<String>? payment_methods,
    String? currency,
    bool? fixed_va,
    String? callback_virtual_account_id,
    String? mid_label,
    String? reminder_time_unit,
    int? reminder_time,
    String? locale,
    List? items,
    List? fees,
    bool? should_authenticate_credit_card,
    Map<String, String>? headers,
  }) async {
    final Map jsonData = {
      "external_id": external_id,
      "amount": amount,
      "description": description,
      "payer_email": payer_email,
      "customer": customer,
      "customer_notification_preference": customer_notification_preference,
      "invoice_duration": invoice_duration,
      "success_redirect_url": success_redirect_url,
      "failure_redirect_url": failure_redirect_url,
      "payment_methods": payment_methods,
      "currency": currency,
      "fixed_va": fixed_va,
      "callback_virtual_account_id": callback_virtual_account_id,
      "mid_label": mid_label,
      "reminder_time_unit": reminder_time_unit,
      "reminder_time": reminder_time,
      "locale": locale,
      "items": items,
      "fees": fees,
      "should_authenticate_credit_card": should_authenticate_credit_card,
    };
    return await invokeBuilder(
      endpoint: "POST https://api.xendit.co/v2/invoices",
      headers: {
        "for-user-id": forUserId,
        "with-fee-rule": withFeeRule,
        ...(headers ?? {}),
      },
      parameters: jsonData,
      onResult: (result) {
        return Invoice(result);
      },
    );
  }
}