void main() {
  int a = 5;
  int b = 6;

  // Toán tử 3 ngôi: kiểm tra a >= b
  int max1 = a >= b ? a : b;
  print(max1); // Kết quả: 6

  // Câu lệnh if-else đơn giản
  a = 7;
  int max2;
  if (a >= b) {
    max2 = a;
  } else {
    max2 = b;
  }
  print(max2); // Kết quả: 7

  // Câu lệnh if-else-if
  a = 6;
  int max3;
  if (a > b) {
    max3 = a;
  } else if (a < b) {
    max3 = b;
  } else {
    print("a == b");
    max3 = a; // hoặc b
  }
  print(max3); // Kết quả: 6 (vì a == b)

  // =============================
  // Switch-case với String
  String s = "a";
  String sr;

  switch (s) {
    case "Hello":
      sr = s.toUpperCase();
      break;
    case "Hi":
      sr = s.toLowerCase();
      break;
    case "A":
    case "a":
      sr = "Aa";
      break;
    default:
      sr = s;
  }
  print(sr); // Kết quả: "Aa"

  // =============================
  // Switch với pattern matching (Dart 3+)
  int d = 12;
  switch (d) {
    case >= 1 && < 10:
      d = 1;
      break;
    case >= 10:
      d = 2;
      break;
    default:
      d = 0;
  }
  print(d); // Kết quả: 2

  // =============================
  // Dạng switch expression (Dart 3+)
  int d2 = 15;
  var d3 = switch (d2) {
    >= 1 && < 10 => 1,
    >= 10 => 2,
    _ => 0,
  };
  print(d3); // Kết quả: 2
}
