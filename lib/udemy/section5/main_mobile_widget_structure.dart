import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Title app"), backgroundColor: Colors.blue),
        body: SafeArea(
          child: Center(child: Text("Body content")),
        ),
      ),
    ),
  );
}
