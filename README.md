# Xendit Payment Gateway

Xendit Payment gateway unnoficial support dart vm and flutter


### Quickstart

```dart

import 'package:xendit/xendit.dart';

void main() async {
  Xendit xendit = Xendit("xnd_production_abcdefghjkl1234567890");
  var result = await xendit.getPaymentChannels();
  print(result);
}

```

### Docs

- request raw
Request raw support all methods new in api xendit official
request(String method = "", Map params = {}, String methodRequest "get")
Example
```dart
import 'package:xendit/xendit.dart';
void main() async {
  Xendit xendit = Xendit("apiKey");
  var result = await xendit.request("balance?account_type=CASH");
  print(result);
}
```
```dart
import 'package:xendit/xendit.dart';
void main() async {
  Xendit xendit = Xendit("apiKey");
  var result = await xendit.request("qr_codes",
      parameters: {
        "external_id": "external_12324567",
        "type": "STATIC",
        "callback_url": "https://callback.com"
      },
      methodRequest: "post");
  print(result);
}
```


- Make request shorthand
    request shorthand support methods less because i lazy to add more methods :V
    method available:
    - getBalance(String account_type)
    - getPaymentChannels()
    - createCustomer()
    - getCustomer()
    - getTransaction()
    - getTransactions()
    - createQrCode()
    - checkQrCode()
    - createVirtualAccounts()
    - checkVirtualAccounts()
    - changeVirtualAccounts()