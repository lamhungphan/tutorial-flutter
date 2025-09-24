import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: DemoSingleChildScrollView(),
        ),
      ),
    ),
  );
}

class DemoSingleChildScrollView extends StatelessWidget {
  ScrollController  scrollController = ScrollController();

  DemoSingleChildScrollView(){
    scrollController.addListener(() {
      print("scrollController $scrollController");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        controller: scrollController,
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        reverse: true,
        scrollDirection: Axis.horizontal,
        child: Row(
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
          ],
        ),
      ),
    );
  }
}
