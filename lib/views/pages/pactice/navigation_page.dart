import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondSreen()),
            );
          },
          child: Text('Go to Page 2'),
        ),
      ),
    );
  }
}

class SecondSreen extends StatelessWidget {
  const SecondSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Center(
        child: Text("This is Page 2", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
