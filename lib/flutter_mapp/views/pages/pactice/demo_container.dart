import 'dart:math';
import 'package:flutter/material.dart';

class DemoContainer extends StatelessWidget {
  const DemoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Modify padding practice')),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 250,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Text("My Container"),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignInside,
              width: 10,
              color: Color(0xff91e1e1),
            ),
            // shape: BoxShape.circle, // delete boderRadius
            boxShadow: [BoxShadow(offset: Offset(8, 8), blurRadius: 20, color: Colors.pink)],
          ),
          transform: Matrix4.rotationZ(pi / 4),
        ),
      ),
    );
  }
}
