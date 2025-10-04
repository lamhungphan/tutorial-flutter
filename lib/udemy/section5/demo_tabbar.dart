import 'package:flutter/material.dart';

class DemoTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab demo"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.blue)),
              Tab(icon: Icon(Icons.home, color: Colors.blue)),
              Tab(icon: Icon(Icons.home, color: Colors.blue)),
              Tab(icon: Icon(Icons.home, color: Colors.blue)),
              Tab(icon: Icon(Icons.home, color: Colors.blue)),
              Tab(icon: Icon(Icons.home, color: Colors.blue)),
              Tab(icon: Icon(Icons.settings, color: Colors.green)),
              Tab(
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.error, color: Colors.red),
                      SizedBox(width: 10),
                      Text("Error"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          child: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              FirstScreen(),
              FirstScreen(),
              SecondScreen(),
              FirstScreen(),
              SecondScreen(),
              FirstScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("FirstScreen"));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("SecondScreen"));
  }
}
