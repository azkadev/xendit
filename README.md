# Xendit Payment Gateway

library tidak resmi untuk berinteraksi dengan xendit api payment gateway support di berbagai platform dan support server side

## Install package

```bash
dart pub add xendit
```

### Quickstart

```bash
// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:xendit/xendit.dart';
void main() async {
  var xen_key_test = "xnd_development_M34343rtrtgjgthhthpeahsweweZrer2IehTPGUMWTtcCmzLSASoBJLf5xg3NMb1YaXWrXKrO";
  Xendit xendit = Xendit(xen_key_test);
  Map res = await xendit.request(
    "v2/invoices",
    methodRequest: "post",
    headers: {
      // optional
      "for-user-id": "xenplatform_user_id1213",
    },
    parameters: {
      "external_id": "exstesa",
      "amount": 1000,
    },
  );
  print(json.encode(res));
  Map getInvoices = await xendit.request(
    "v2/invoices",
    methodRequest: "get",
    headers: {
      // optional
      "for-user-id": "xenplatform_user_id1213",
    },
    queryParameters: {
      "external_id": "exstesa",
    },
  );
  print(json.encode(getInvoices));
}
```

> Method shorthand saat ini belum tersedia full jika kalian ingin pakai method api terbaru kalian bisa pakai request ya


- [Docs Official](https://developers.xendit.co/api-reference/)