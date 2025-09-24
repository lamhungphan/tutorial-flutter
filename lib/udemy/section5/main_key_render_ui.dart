import 'package:flutter/material.dart';

// https://www.youtube.com/watch?v=kn0EOS-ZiIc
// when: 0.45 (I don't use it)
// list widget: 1:28 ( list data -> ui, change list widget not recommend, not use)
// widget -> element tree -> ui: 2:42
// statefullwidget problem : 3:48
// key types: 7:27 (Almost time, I only use globalkey with multi navigation)
class DemoKey extends StatelessWidget {
  const DemoKey({super.key});

  void main() {
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SafeArea(child: Scaffold(body: Center()))));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
