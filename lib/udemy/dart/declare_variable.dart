void main() {
  // Kiểu dữ liệu cụ thể là String (compile-time): chỉ được gán String
  String s = "a";
  
  // Object: kiểu cha của tất cả các kiểu, nhưng không thể gọi trực tiếp hàm cụ thể như `toUpperCase()` nếu không cast
  Object o = 'b';

  // dynamic: cho phép gán bất kỳ kiểu nào, và gọi mọi method mà không cần kiểm tra kiểu
  dynamic d = 'c';

  // var: Dart sẽ suy luận kiểu từ giá trị đầu tiên được gán (ở đây là String)
  var v = "d";

  // Không được: String không thể gán int
  // s = 1;

  // Object có thể gán bất kỳ kiểu nào (vì là cha của mọi kiểu)
  // o = 1;
  // o = null;

  // Object nullable: có thể chứa null
  Object? o2 = null;

  // Muốn dùng method String trên o thì cần ép kiểu
  (o as String).toUpperCase();

  // dynamic có thể gán bất kỳ kiểu, kể cả null
  // d = 1;
  // d = null;

  // Không báo lỗi khi gọi method vì dynamic bỏ qua kiểm tra kiểu tại compile-time
  d.toUpperCase();

  // var với số => Dart suy luận đây là int
  var v2 = 1;

  // var chưa gán => Dart suy luận là `dynamic`
  var v3;
  v3 = null;
  v3 = 1;
}
