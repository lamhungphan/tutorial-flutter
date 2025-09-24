import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: DemoMaterial(),
      ),
    ),
  );
}

class DemoMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Title",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
        // elevation: 16,
        // shadowColor: Colors.grey,
        // shape: OvalBorder(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          PopupMenuButton(
            icon: Icon(Icons.share, color: Colors.white),
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(child: Text("Facebook")),
              PopupMenuItem(child: Text("Instagram")),
            ],
          )
        ],
        leading: LeadingAppBar(),
      ),
      drawer: MainDrawer(),
      body: Center(),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.add)),
    );
  }
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: Colors.grey,
      shadowColor: Colors.red,
      elevation: 32,
      child: ListView(
        children: [
          DrawerHeader(
            child: Text("Header"),
            decoration: BoxDecoration(color: Colors.yellow),
          ),
          ListTile(title: Text("Menu item"),trailing: Icon(Icons.navigate_next),)
        ],
      ),
    );
  }
}

class LeadingAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu, color: Colors.white),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
