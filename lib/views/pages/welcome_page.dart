import 'package:flutter/material.dart';
import 'package:flutter_application/views/widget_tree.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Lottie.asset('assets/lotties/camel.json'),
           Text('CamelCases',
           style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
            letterSpacing: 8,
           ),),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
