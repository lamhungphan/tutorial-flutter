import 'package:flutter/material.dart';

// NavigationBar https://www.youtube.com/watch?v=DVGYddFaLv0
// NavigationRail https://www.youtube.com/watch?v=y9xchtVTtqQ

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: DemoNavigationbar(),
      ),
    ),
  );
}

class DemoNavigationbar extends StatefulWidget {
  @override
  State<DemoNavigationbar> createState() => _BodyState();
}

class _BodyState extends State<DemoNavigationbar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        Container(
          child: Text("Home"),
        ),
        Container(
          child: Text("Settings"),
        )
      ][selectedIndex],
      bottomNavigationBar: NavigationBar(   //BottomNavigationBar material 2
        selectedIndex: selectedIndex,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
              icon: Badge(
                child: Icon(Icons.settings),
                label: Text("2"),
              ),
              label: "Settings"),
        ],
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
    );
  }
}

class DemoNavigationbar2 extends StatefulWidget {
  const DemoNavigationbar2({super.key});

  @override
  State<DemoNavigationbar2> createState() => _DemoNavigationbar2State();
}

class _DemoNavigationbar2State extends State<DemoNavigationbar2> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: selectedIndex,
            destinations: [
              NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
              NavigationRailDestination(
                  icon: Badge(
                    child: Icon(Icons.settings),
                    label: Text("2"),
                  ),
                  label: Text("Settings")),
            ],
            onDestinationSelected: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
          ),
          [
            Container(
              child: Text("Home"),
            ),
            Container(
              child: Text("Settings"),
            )
          ][selectedIndex],
        ],
      ),
    );
  }
}
