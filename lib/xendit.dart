import 'package:http/http.dart';

class Xendit {
  String apiKey;
  Xendit(this.apiKey);

  dynamic request(String method, {Map? parameters}) async {

    Map json = {
      "status_code": 200,
      "status_bool": true,
      "result": {}
    };
    return json; 
  }

  getBalance({String accountType = "CASH"}) async {

  }


}
