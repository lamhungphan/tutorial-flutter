// Hàm task1 chạy bất đồng bộ, giả lập xử lý mất 2s
Future<String> task1() async {
  print("Start task1 ${DateTime.now().toIso8601String()}");
  await Future.delayed(Duration(seconds: 2)); // delay 2s
  print("End task1 ${DateTime.now().toIso8601String()}");
  return "Result1";
}

// Hàm task2 chạy bất đồng bộ, giả lập xử lý mất 5s
Future<String> task2() async {
  print("Start task2 ${DateTime.now().toIso8601String()}");
  await Future.delayed(Duration(seconds: 5)); // delay 5s
  print("End task2 ${DateTime.now().toIso8601String()}");
  return "Result2";
}

// Hàm task3 chạy bất đồng bộ, giả lập xử lý mất 4s
Future<String> task3() async {
  print("Start task3 ${DateTime.now().toIso8601String()}");
  await Future.delayed(Duration(seconds: 4)); // delay 4s
  print("End task3 ${DateTime.now().toIso8601String()}");
  return "Result3";
}

// task12 gọi tuần tự task1 rồi task2 => tổng thời gian 7s
Future<void> task12() async {
  await task1(); // chạy xong task1 rồi mới chạy task2
  await task2();
}

main() async {
  print("Start main ${DateTime.now().toIso8601String()}");

  // Chạy task12 (gồm task1 + task2, tổng 7s) song song với task3 (4s)
  var t12 = task12(); // bắt đầu chạy task1 -> task2 (không đợi)
  var t3 = task3();   // bắt đầu chạy task3 (không đợi)

  // Đợi cả t12 và t3 hoàn thành
  await Future.wait([t12, t3]);

  // Các use-case thực tế: load file, gọi API, native function...
  print("End task123 ${DateTime.now().toIso8601String()}");
  print("End main ${DateTime.now().toIso8601String()}");
}
