import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: DemoGridview(),
        ),
      ),
    ),
  );
}

class DemoGridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1 / 0.5,
      padding: EdgeInsets.all(10),
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ],
    );
  }
}

class DemoGridview2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 70,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) => Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      itemCount: 10,
    );
  }
}

class Body3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1 / 0.5,
      padding: EdgeInsets.all(10),
      maxCrossAxisExtent: 150,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ],
    );
  }
}

class Body4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
