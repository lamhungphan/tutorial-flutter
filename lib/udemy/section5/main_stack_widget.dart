import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: DemoStack(),
        ),
      ),
    ),
  );
}

class DemoStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      color: Colors.grey,
      child: Stack(
        alignment: Alignment.centerLeft,
        //textDirection: TextDirection.ltr,
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            width: 150,
            height: 500,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
          )
        ],
      ),
    );
  }
}
