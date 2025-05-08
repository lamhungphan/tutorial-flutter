void main() {
  // 1. Dùng vòng lặp for thông thường
  var list = [10, 20, 30, 40, 50];
  for (var i = 0; i < list.length; i++) {  // i là chỉ số của mảng
    print(list[i]);  // In giá trị tại chỉ số i
  }

  // 2. Dùng vòng lặp for-in (dễ hiểu hơn)
  for (var item in list) {  // item đại diện cho phần tử trong danh sách
    print(item);  // In phần tử
  }

  // 3. Dùng phương thức forEach() với một hàm lambda
  list.forEach((element) {  // Gọi hàm callback cho mỗi phần tử
    print(element);  // In phần tử
  });

  // 4. Cách viết gọn của forEach() dùng lambda
  list.forEach((element) => print(element));  // Gọn hơn với cú pháp rút gọn của lambda

  // 5. Dùng break trong vòng lặp for
  for (var i = 0; i < list.length; i++) {
    if (i == 2) break;  // Nếu i == 2, thoát khỏi vòng lặp
    print(list[i]);  // In giá trị
  }

  // 6. Dùng continue trong vòng lặp for
  for (var i = 0; i < list.length; i++) {
    if (i == 2) continue;  // Nếu i == 2, bỏ qua phần tử đó và tiếp tục vòng lặp
    print(list[i]);  // In giá trị
  }

  // 7. Dùng vòng lặp while
  var i = 0;
  while (i < list.length) {  // Kiểm tra điều kiện tại đầu vòng lặp
    print(list[i]);  // In phần tử
    i++;  // Tăng chỉ số
  }

  // 8. Dùng vòng lặp do-while (chạy ít nhất 1 lần)
  i = 0;
  do {
    print(list[i]);  // In phần tử
    i++;  // Tăng chỉ số
  } while (i < list.length);  // Kiểm tra điều kiện sau khi thực hiện lặp

  // 9. Vòng lặp while vô hạn và sử dụng break để thoát
  i = 0;
  while (true) {  // Vòng lặp vô hạn
    print(list[i]);  // In phần tử
    i++;  // Tăng chỉ số
    if (i >= list.length) break;  // Điều kiện để thoát khỏi vòng lặp
  }

  // 10. Vòng lặp for với cú pháp không có điều kiện khởi tạo ngoài
  i = 0;
  for (; i < list.length;) {  // Điều kiện khởi tạo i đã được gán bên ngoài
    print(list[i]);  // In phần tử
    i++;  // Tăng chỉ số
  }
}
