import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    CupertinoApp(
      home: SafeArea(
        child: CupertinoPageScaffold(
          child: DemoPixelRatio(),
        ),
      ),
    ),
  );
}

class DemoPixelRatio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Screen info: ${MediaQuery.of(context).devicePixelRatio}"
        ", ${MediaQuery.of(context).textScaler}");
    return Container(
      width: 300,
      height: 300,
      color: Colors.orange,
      child: Column(
        children: [
          Text("Hello iOS"),
          CupertinoButton(
            child: Text("Button iOS"),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Button Android"),
          )
        ],
      ),
    );
  }
}
