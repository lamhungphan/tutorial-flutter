import 'package:flutter/material.dart';
import 'package:flutter_application/basic_layout.dart';
import 'package:flutter_application/flutter_mapp/views/pages/welcome_page.dart';
import 'package:flutter_application/udemy/udemy_main.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WelcomePage();
                        },
                      ),
                    );
                  },
                  child: Text('Flutter Mapp', style: TextStyle(fontSize: 30)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return UdemyMain();
                        },
                      ),
                    );
                  },
                  child: Text('Udemy course', style: TextStyle(fontSize: 30)),
                ),
                   TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BasicLayout();
                        },
                      ),
                    );
                  },
                  child: Text('Basic layout', style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
