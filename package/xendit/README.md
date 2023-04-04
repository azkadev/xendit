# Xendit Payment Gateway

library tidak resmi untuk berinteraksi dengan xendit api payment gateway support di berbagai platform dan support server side

## Install package

```bash
dart pub add xendit
```

### Quickstart

```bash
import 'dart:convert';
import 'dart:io';

import 'package:xendit/xendit.dart';
import "package:galaxeus_lib/galaxeus_lib.dart";

void main() async {
  Xendit xendit = Xendit(apiKey: "xnd_development_iI9cluwTFSNoF9xUlJFxOYvMAD21WV6OHv1oMKKkSAEtdf2QQG0yVnS6BLMkn");
  var res = await xendit.invoke(
    endpoint: "POST https://api.xendit.co/v2/invoices",
    headers: {
      "for-user-id": "",
    },
    parameters: {
      "external_id": "asoaskoaks",
      "amount": 10000,
    },
    queryParameters: {
      "id": "saksoak"
    }
  );

  print(res);
}
```

> Method shorthand saat ini belum tersedia full jika kalian ingin pakai method api terbaru kalian bisa pakai request ya


- [Docs Official](https://developers.xendit.co/api-reference/)