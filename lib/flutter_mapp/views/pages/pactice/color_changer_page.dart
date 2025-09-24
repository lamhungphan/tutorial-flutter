import 'dart:math';

import 'package:flutter/material.dart';

class ColorChangerPage extends StatefulWidget {
  const ColorChangerPage({super.key});

  @override
  State<ColorChangerPage> createState() => _ColorChangerPageState();
}

class _ColorChangerPageState extends State<ColorChangerPage> {
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
      appBar: AppBar(title: Text("Color changer")),
      body: Center(
        child: ElevatedButton(onPressed: changeColor, child: Text("Change")),
      ),
    );
  }
}
