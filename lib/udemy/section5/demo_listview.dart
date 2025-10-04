import 'package:flutter/material.dart';

class DemoListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: ListView(
        //SingleChildScrollView + Row/Column
        padding: EdgeInsets.all(16),
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
                Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}

class DemoListview2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 232,
      // child: ListView.builder(
      //   //SingleChildScrollView + Row/Column
      //   padding: EdgeInsets.all(16),
      //   itemCount: 20,
      //   itemBuilder: (context, index) { // 1000000 lazy load
      //     print("itemBuilder $index");
      //     return Container(
      //       alignment: Alignment.center,
      //       width: 200,
      //       height: 200,
      //       decoration: BoxDecoration(
      //         color: Colors.blue,
      //         borderRadius: BorderRadius.circular(16),
      //       ),
      //       child: Text("Item $index"),
      //     );
      //   },
      // ),
      child: ListView.separated(
        //SingleChildScrollView + Row/Column
        padding: EdgeInsets.all(16),
        itemCount: 20,
        itemBuilder: (context, index) {
          // 1000000 lazy load
          print("itemBuilder $index");
          return Container(
            alignment: Alignment.center,
            width: 200,
            height: index == 0 || index == 19 ? 300: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text("Item $index"),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          print("separatorBuilder $index");
          return Container(
            width: 200,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
            ),
          );
        },
      ),
      //ListView.custom: https://api.flutter.dev/flutter/widgets/ListView/ListView.custom.html
    );
  }
}
