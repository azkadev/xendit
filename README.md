# Xendit Payment Gateway

### Quickstart

```dart

import 'package:xendit/xendit.dart';

void main() async {
  Xendit xendit = Xendit("xnd_production_abcdefghjkl1234567890");
  var result = await xendit.getPaymentChannels();
  print(result);
}

```