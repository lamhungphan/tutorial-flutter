import 'dart:math';

import 'package:flutter/material.dart';

class PracticePage extends StatefulWidget {
  const PracticePage({super.key});

  @override
  State<PracticePage> createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  Color bgColor = Colors.white;

  void changeColor() {
    setState(() {
      bgColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(title: Text("hello world")),
      body: Center(
        child: ElevatedButton(onPressed: changeColor, child: Text("changeColor")),
      ),
    );
  }
}
