void main() {
  int x = 7;
  int y = 3;

  // Các toán tử cơ bản: +  -  *  /  ++  --
  print("${x * y}");  // In kết quả của phép nhân x và y (7 * 3 = 21)

  dynamic z = x;
  z ~/= y;  // Toán tử ~/ là phép chia lấy phần nguyên (7 ~/ 3 = 2)
  print("${x ~/ y}");  // Tương tự như trên, in kết quả phép chia lấy phần nguyên của x/y
  print(z);  // In giá trị của z (2)

  // Các toán tử so sánh: >  <  >=  <=  ==  !=
  var m = "h";
  var n = 'i';
  print("${m == n}");  // So sánh m và n, kết quả là false vì 'h' không bằng 'i'
  print("${m.compareTo(n)}");  // So sánh m và n bằng cách trả về giá trị so sánh (0 nếu bằng, <0 nếu m < n, >0 nếu m > n)

  // Kiểm tra kiểu dữ liệu: as, is, is!
  print("${m is String}");  // Kiểm tra xem m có phải là kiểu String không, kết quả là true
  print("${n is! String}");  // Kiểm tra xem n có phải là kiểu không phải String không, kết quả là false

  // Các toán tử logic: ||, &&, !
  // Bạn có thể thử thêm các phép toán logic ở đây:
  bool a = true, b = false;
  print("${a || b}");  // Hoặc (OR) - true
  print("${a && b}");  // Và (AND) - false
  print("${!a}");  // Không (NOT) - false

  // Các toán tử bitwise: & | ^ ~ << >>
  int p = 5;  // 0101 trong nhị phân
  int q = 3;  // 0011 trong nhị phân
  print("${p & q}");  // AND bitwise, kết quả là 1 (0101 & 0011 = 0001)
  print("${p | q}");  // OR bitwise, kết quả là 7 (0101 | 0011 = 0111)
  print("${p ^ q}");  // XOR bitwise, kết quả là 6 (0101 ^ 0011 = 0110)
  print("${~p}");  // NOT bitwise, kết quả là -6 (inverter của 0101 là 1010, tương đương -6 trong 2's complement)
  print("${p << 1}");  // Toán tử dịch trái (shift left), kết quả là 10 (0101 << 1 = 1010)
  print("${p >> 1}");  // Toán tử dịch phải (shift right), kết quả là 2 (0101 >> 1 = 0010)
}
