import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: DemoButton(),
        ),
      ),
    ),
  );
}

class DemoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: //ElevatedButton(
      OutlinedButton.icon(
        //OutlinedButton, ElevatedButton, TextButton
        onPressed: () {
          print("onPressed");
        },
        // onPressed: null,
        //child: Text("Button"),
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(20),
          //backgroundColor: Colors.red,
          foregroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 16,
          shadowColor: Colors.orange.withValues(alpha: 0.5),
          fixedSize: Size(200, 200),
          side: BorderSide(width: 4, color: Colors.red),
          disabledBackgroundColor: Colors.grey,
        ),
        label: Icon(Icons.add, size: 24),
        icon: Text("Icon button"),
      ),
    );
  }
}
