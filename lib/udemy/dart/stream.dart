import 'dart:async';

/// Stream đơn giản dùng async*
Stream<int> countStream(int value) async* {
  for (int i = 0; i < value; i++) {
    yield i;
  }
}

/// Future nhận stream để tính tổng
Future<int> getTotal(int value) async {
  int total = 0;
  await for (int item in countStream(value)) {
    total += item;
  }
  return total;
}

Future<void> main() async {
  print("===> Start");

  // 1. Duyệt stream bằng listen
  print("\n--- countStream().listen()");
  countStream(3).listen((event) => print("countStream emit: $event"));

  // 2. Duyệt stream bằng await for
  print("\n--- await for ... in countStream()");
  await for (int item in countStream(3)) {
    print("await for: $item");
  }

  // 3. Tính tổng từ stream
  print("\n--- Tổng từ stream:");
  int total = await getTotal(5);
  print("Tổng = $total");

  // 4. Stream từ Iterable
  print("\n--- Stream.fromIterable()");
  var iterable = Iterable.generate(5, (index) => index);
  Stream.fromIterable(iterable).listen((event) {
    print("fromIterable: $event");
  });

  // 5. Stream định kỳ
  print("\n--- Stream.periodic()");
  await Stream.periodic(Duration(milliseconds: 300), (count) => count * 2)
      .take(3)
      .forEach((event) => print("periodic: $event"));

  // 6. Broadcast stream
  print("\n--- Broadcast stream:");
  var broadcastStream = Stream.periodic(Duration(milliseconds: 300), (count) => count)
      .take(3)
      .asBroadcastStream();
  broadcastStream.listen((event) => print("listener 1: $event"));
  broadcastStream.listen((event) => print("listener 2: $event"));

  // 7. StreamController
  print("\n--- StreamController:");
  StreamController controller = StreamController();
  controller.stream.listen((event) {
    print("controller stream: $event");
  });

  // sink = input
  // stream = output
  controller.sink.add("Manual event 1");
  await Future.delayed(Duration(milliseconds: 300));
  controller.sink.add("Manual event 2");
  await Future.delayed(Duration(milliseconds: 300));
  await controller.close();

  // 8. Transform stream: map
  print("\n--- Transform: map");
  countStream(4).map((event) => event + 10).listen((event) {
    print("map +10: $event");
  });

  // 9. Transform stream: where (lọc)
  print("\n--- Transform: where");
  countStream(7).where((event) => event % 3 == 0).listen((event) {
    print("chia hết cho 3: $event");
  });

  print("===> End");
}

// Advance: debounce, buffer, combine stream