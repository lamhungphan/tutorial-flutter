import 'dart:io';       // Dùng sleep để mô phỏng chờ đồng bộ
import 'dart:isolate';  // Dùng Isolate để chạy song song các tác vụ nặng

// task1 là một hàm tính toán nặng (CPU-bound)
String task1() {
  print("Start task1 ${DateTime.now().toIso8601String()}");
  var count = 0;
  for(int i = 0; i < 5000000000; i++) {
    count++;
  }
  print("End task1 ${DateTime.now().toIso8601String()}");
  return "Result1";
}

// task2 là một tác vụ giả lập IO-bound (chờ 5 giây)
String task2()  {
  print("Start task2 ${DateTime.now().toIso8601String()}");
  sleep(Duration(seconds: 5)); // Dừng main thread => nên dùng trong isolate
  print("End task2 ${DateTime.now().toIso8601String()}");
  return "Result2";
}

// task3 tương tự như task2, mô phỏng một tác vụ tốn thời gian
String task3() {
  print("Start task3 ${DateTime.now().toIso8601String()}");
  sleep(Duration(seconds: 5));
  print("End task3 ${DateTime.now().toIso8601String()}");
  return "Result3";
}

main() async {
  print("Start main ${DateTime.now().toIso8601String()}");

  // Chạy task1 + task2 trong một isolate phụ
  var t12 = Isolate.run(() {
    task1(); // Tính toán nặng
    task2(); // Chờ 5s
  });

  // Chạy task3 song song trong một isolate khác
  var t3 = Isolate.run(() {
    task3(); // Chờ 5s
  });

  // Chờ cả 2 isolate hoàn thành
  await Future.wait([t12, t3]);

  // Sau khi tất cả hoàn thành, in ra thời gian
  print("End task123 ${DateTime.now().toIso8601String()}");
  print("End main ${DateTime.now().toIso8601String()}");
}
