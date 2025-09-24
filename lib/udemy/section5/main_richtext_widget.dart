import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: DemoRichText(),
        ),
      ),
    ),
  );
}

Center DemoRichText() {
  return Center(
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "A "),
          TextSpan(
            text: "B ",
            style: TextStyle(fontSize: 20),
          ),
          TextSpan(
            text: "c ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            children: [
              TextSpan(
                text: "d ",
                onEnter: (event) => print("onEnter"),
                onExit: (event) {
                  print("onExit");
                },
              ),
              TextSpan(
                text: "e ",
              )
            ],
            style: TextStyle(
              fontWeight: FontWeight.w100,
              decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    ),
  );
}
