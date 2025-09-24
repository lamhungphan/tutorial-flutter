late String s;  // Khai báo biến 's' với từ khóa `late` -> khởi tạo trễ (lazy), bắt buộc phải gán trước khi sử dụng

void main() {
  s = "a";  // Gán giá trị lần đầu
  s = "b";  // Gán lại OK (biến thường, không phải final)
  print(s); // In ra: b

  const int i = 0;  // `const` là hằng số tại thời điểm **biên dịch (compile time)**
  // Không thể thay đổi giá trị `i` sau khi khai báo

  final bool b;  // `final` là hằng số sau khi gán **lần đầu tại runtime**
  b = true;      // Gán lần đầu OK
  print(b);      // In ra: true
}
