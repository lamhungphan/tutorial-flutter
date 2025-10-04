import 'package:flutter/material.dart';

class BaseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class DemoRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      color: Colors.yellow,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            //textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,

            // textBaseline: TextBaseline.ideographic,
            //https://stackoverflow.com/questions/56910191/what-is-the-difference-between-alphabetic-and-ideographic-in-flutters-textbasel
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BaseItem(),
              Container(width: 100, height: 250, color: Colors.green),
              BaseItem(),
              BaseItem(),
            ],
          ),
          Text("Hello"),
        ],
      ),
    );
  }
}
