import 'dart:isolate';

void main(List<String> args) {
  ReceivePort receivePort = ReceivePort();
  Isolate.spawn((message) async {
    int total_count = 0;
    while (true) {
      await Future.delayed(Duration(microseconds: 1));
      total_count++;
      final Map anu = {
        "date": total_count,
      };
      message.send(anu);
      anu.clear();
    }
  }, receivePort.sendPort);

  receivePort.listen((message) {
    print(message);
  });
  print("start");
}
