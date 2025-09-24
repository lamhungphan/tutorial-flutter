import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: DemoExpand(),
        ),
      ),
    ),
  );
}

class DemoExpand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              child: Column(
                children: [
                  Text("Home"),
                  Text("Setting"),
                  Text("About"),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Row(children: [
                      Text("YYYY/MM/DD: "),
                      Expanded(child: Text("YYYY"), flex: 2,),
                      Expanded(child: Text("MM"), flex: 1,),
                      Expanded(child: Text("DD"), flex: 1,),
                    ],)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
