// 1. Hàm trả về int rõ ràng
int sum1(int a, int b, int c) {
  return a + b + c;
}

// 2. Hàm void - không trả về gì
void sum2(int a, int b, int c) {
  print(a + b + c);
}

// 3. Hàm không khai báo kiểu trả về (mặc định dynamic)
sum3(int a, int b, int c) {
  return a + b + c;
}

// 4. Hàm có named parameters (tham số có tên)
int sum4(int a, {int b = 10, int c = 100}) {
  return a + b + c;
}

// 5. Hàm với optional positional parameters
int sum5(int a, [int b = 10, int c = 100]) {
  return a + b + c;
}

// 6. Hàm arrow function với optional parameters
int sum6(int a, [int b = 10, int c = 100]) => a + b + c;

// 7. Hàm trả về record (tuple-like)
(int, int, int) sum7(int a, [int b = 10, int c = 100]) {
  return (a + b + c, a, b + c);
}

// 8. Hàm print element cho forEach
void printElement(int element) {
  print(element);
}

void main() {
  print("sum1: \${sum1(1, 2, 3)}");

  sum2(4, 5, 6);

  print("sum3: \${sum3(7, 8, 9)}");

  print("sum4 default: \${sum4(1)}");
  print("sum4 custom c: \${sum4(1, c: 1)}");

  print("sum5: \${sum5(1)}");
  print("sum5 full: \${sum5(1, 1)}");

  var result = sum7(5);
  print("sum7 -> sum: \${result.\$1}, a: \${result.\$2}, b+c: \${result.\$3}");

  var list = [1, 2, 3];
  list.forEach((element) => print("Anonymous function: \$element"));

  list.forEach(printElement);
}
