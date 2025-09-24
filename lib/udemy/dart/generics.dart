// Định nghĩa class generic với 2 kiểu dữ liệu A và B
class MyClass<A, B> {
  A a; // biến kiểu A
  B b; // biến kiểu B
  MyClass(this.a, this.b); // constructor nhận A và B

  @override
  String toString() {
    return "MyClass data: $a $b";
  }
}

// Hàm generic nhận vào tham số kiểu C và trả về chính nó
C fn<C>(C d) {
  return d;
}

void main() {
  // List kiểu int, generic đã được áp dụng ở List
  List<int> list = [1, 2, 3];

  // Tạo đối tượng MyClass với A = String, B = int
  MyClass<String, int> myClass = MyClass("Hello", 1);
  print(myClass); // In ra: MyClass data: Hello 1

  // Gọi hàm generic fn với kiểu bool
  print(fn<bool>(false)); // In ra: false
}

// có thể thay bằng Object hoặc dynamic, nhưng Generic sẽ ràng buộc dữ liệu tốt hơn
