import 'package:flutter/material.dart';

class ShowListPage extends StatelessWidget {
  final List<String> names = ["Hùng", "Linh", "An", "Bảo", "Minh"];

  // const ShowListPage({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List name")),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
          );
        },
      ),
    );
  }
}
