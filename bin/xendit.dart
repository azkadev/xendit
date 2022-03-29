import 'dart:async';

void main() {
  Timer.periodic(Duration(seconds: 10), (timer) {
    print(timer.tick.toString());
  });
}
