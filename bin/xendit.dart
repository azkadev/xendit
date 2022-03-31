import 'package:xendit/xendit.dart';

void main() async {
  Xendit xendit = Xendit("apiKey");
  var result = await xendit.getPaymentChannels();
  print(result);
}
