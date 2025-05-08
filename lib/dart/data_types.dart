void main() {
  //print
  print("Hello world");

  //int = long
  int i = 10;
  var j = 20;
  print(i);
  print("$i $j ${i + j}");

  //double
  double d = 1.5;
  d++;
  print("$d ${d + 1}");

  //String
  String s1 = "a";
  String s2 = 'b';
  String s3 = '''c  d''';
  print("$s1 $s2 $s3");

  //boolean
  bool b = true;
  print(" $b ${!b}");

  //record (tuple python), readonly
  (int, bool, double) r = (10, true, 2.1);
  print(r);
  print("${r.$2}");

  //List
  List<int> l = [1, 2, 3]; //[]
  print(l[1]);
  l[2] = 4;
  l.add(5);
  l.removeAt(0);
  print(l);

  //set
  Set<String> set = {"a", "b", "a"}; //key set
  set.add("c");
  set.remove("a");
  var lookup = set.lookup("z");

  print(set.toString() + " " + lookup.toString());

  //map
  Map<String, int> m = {"name1": 25, "name2": 35}; //json
  m["name1"] = 15;
  m["name3"] = 45;
  m.remove("name2");
  print(m);

  //Runes
  String s4 = "おはようございます"; //16 bit , unicode = 17* 16bit
  print(s4);
  for (int i = 0; i < s4.length; i++) {
    print(s4[i]);
  }

  Runes input = Runes(
    '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}',
  );
  var s5 = new String.fromCharCodes(input);
  print(s5);
  for (int i = 0; i < s5.length; i++) {
    print(s5[i]);
  }
}
