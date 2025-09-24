import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: DemoGestureDetector(),
        ),
      ),
    ),
  );
}

class DemoGestureDetector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.green,
        borderRadius: BorderRadius.circular(32),
        child: InkWell(
          //Ink
          borderRadius: BorderRadius.circular(32),
          onTap: () => print("InkWell onTap"),
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(32),
            //   color: Colors.green,
            // ),
            child: Text(
              "Content",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class DemoGestureDetector2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => print("GestureDetector onTap"),
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.blue,
          ),
          child: Text(
            "Content",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
