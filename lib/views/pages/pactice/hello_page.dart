import 'package:flutter/material.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Print a Text")),
      body: Center(
        child: Text("Xin chào, Flutter!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
