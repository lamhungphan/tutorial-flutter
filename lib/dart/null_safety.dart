import 'dart:math';

class A {
  String getInfo() => "A info";
}

class B {
  A? a;
}

void main() {
  // 1. Non-nullable variable
  String s1 = "A";
  print(s1.toUpperCase());

  // 2. late (chắc chắn sẽ gán trước khi dùng)
  late String s2;
  s2 = "hello late";
  print(s2.toUpperCase());
  // Nếu bỏ dòng trên, dùng s2 sẽ lỗi: LateInitializationError

  // 3. Nullable variable
  String? s3;
  print(s3?.toUpperCase()); // null-safe call

  // 4. Ép non-null bằng "!"
  String? s33 = 'hi';
  print(s33!.toUpperCase()); // lỗi runtime nếu s33 == null

  // 5. Toán tử ?? (default nếu null)
  String s4 = s3 ?? "";
  print("s4 = '$s4'");

  // 6. Toán tử ?? và ! kết hợp
  s4 = s3 == null ? "" : s3!;
  print("s4 again = '$s4'");

  // 7. Safe chain call với object
  B? b;
  String? r = b?.a?.getInfo();
  print("r = $r");

  // 8. List có phần tử nullable
  List<int?> scores = [8, null, 0, 2];
  int totalScore = 0;
  scores.forEach((e) => totalScore += e ?? 0);
  print("Total score: $totalScore");

  // 9. Nullable function return
  print("Random name: ${getRandomName()?.toUpperCase()}");

  print("===> DONE");
}

String? getRandomName() {
  if (Random().nextBool()) {
    return "Dart";
  } else {
    return null;
  }
}
