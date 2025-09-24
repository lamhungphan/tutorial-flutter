import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.trackpad,
          PointerDeviceKind.mouse,
        },
      ),
      home: SafeArea(
        child: Scaffold(
            // body: Body(),
            body: DemoPageView2(5)),
      ),
    ),
  );
}

class DemoPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height / 2,
      child: PageView(children: [
        Container(
          decoration: BoxDecoration(color: Colors.red),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.green),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ]),
    );
  }
}

class DemoPageView2 extends StatefulWidget {
  int count = 0;

  DemoPageView2(this.count, {super.key});

  @override
  State<DemoPageView2> createState() => _DemoPageView2State();
}

class _DemoPageView2State extends State<DemoPageView2> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height / 2,
          child: PageView.builder(
            itemCount: widget.count,
            itemBuilder: (context, index) => Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: index % 2 == 0 ? Colors.red : Colors.green,
              ),
              child: Text(
                "Page $index",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onPageChanged: (value) {
              setState(
                () {
                  index = value;
                },
              );
            },
          ),
        ),
        PageIndicator(widget.count, index)
      ],
    );
  }
}

class PageIndicator extends StatelessWidget {
  int count;
  int index;

  PageIndicator(this.count, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          for (int i = 0; i < count; i++)
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: i == index ? Colors.blue : Colors.grey,
              ),
            )
        ],
      ),
    );
  }
}
