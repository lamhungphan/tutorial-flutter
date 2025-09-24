import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: DemoContainer(),
        ),
      ),
    ),
  );
}

class DemoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 250, //SizedBox
        //margin: EdgeInsets.all(20),  //Padding
        //padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
        child: Text("Hello world"),
        alignment: Alignment.bottomCenter, //Center
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              style: BorderStyle.solid, strokeAlign: BorderSide.strokeAlignInside, width: 10, color: Color(0xff91e1e1)),
          //shape: BoxShape.circle
          boxShadow: [
            BoxShadow(
              offset: Offset(8, 8),
              blurRadius: 20,
              color: Colors.pink,
            ),
          ],
        ),
        transform: Matrix4.rotationZ(pi / 4),
      ),
    );
  }
}
