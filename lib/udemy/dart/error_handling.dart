Future<void> errorApi() async {
  await Future.delayed(const Duration(seconds: 1),() {
    throw Exception("myException");
  },);
}

main() async {
  var list = [1, 2, 3];
  
  try {
    list[4] = 5;
  } on RangeError catch (error) {
    print("* RangeError: $error");
    return;
  } catch (error, stackTrace) {
    print("* Error: $error $stackTrace");
  } finally {
    print("finally logic");
  }
  print("main logic");

  // errorApi().then((value) {
  //   print("Done");
  // }).onError((error, stackTrace) {
  //   print("* Error $error $stackTrace");
  // }).whenComplete(() => print("finally logic"));

  try {
    await errorApi();
  } catch (error) {
    print("* Error $error");
  }

}
