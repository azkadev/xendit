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
