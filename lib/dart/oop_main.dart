import 'package:flutter_application/dart/oop_class.dart';

void main() {
  Human human = Human("A",20);
  human.name = "B";
  print(human.name);
  Student student = Student(1, "Student", 22);
  student.printInfo();

  Teacher teacher = Teacher();
  teacher.printInfo();
}
