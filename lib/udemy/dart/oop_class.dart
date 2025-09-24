class Human {
  late String _name;//private

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int _year = 0;

// Human(String _name, int _year) {
  //   this._name = _name;
  //   this._year = _year;
  // }

  Human(this._name, this._year);

  Human.noname(this._year) {
    _name = "";
  }

  void printInfo() {
    print(_name);
    print(_year);
  }
}

class Student extends Human {
  late int _id;
  Student(this._id, super.name, super.year);

  @override
  void printInfo() {
    print(_id);
    super.printInfo();
  }
}

// abstract is both Interface and Abstract class depends on 'extends' or 'implement'
abstract class People {
  late String _name;//private
  int _year = 0;

  void printInfo() {
    print(_name);
    print(_year);
  }
}

// join classes together
mixin AddId {
  late int _id;
  int get id => _id;

  set id(int value) {
    _id = id;
  }
}

class Teacher with AddId implements People {
  @override
  late String _name;

  @override
  late int _year;

  @override
  void printInfo() {
    // TODO: implement printInfo
  }
}

enum LoadingStatus {
  Init, Loading, Error, Done
}

