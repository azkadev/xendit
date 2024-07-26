import 'package:xendit/xendit.dart';

void main() async {
  Xendit xendit = Xendit(
      api_key:
          "xnd_development_rVgN5g1FbAj3zBeGPrFTZ81mJsNINY2lvLWNWeKHTJlBKtysWGnVYx0ltyv43s");
  var res = await xendit
      .invoke(endpoint: "POST https://api.xendit.co/v2/invoices", headers: {
    // "for-user-id": "",
  }, parameters: {
    "external_id": "asoaskoaks",
    "amount": 10000,
  }, queryParameters: {
    // "id": "saksoak"
  });

  print(res);
}
