import 'package:flutter/material.dart';
import 'package:flutter_application/udemy/section5/section5_main.dart';
import 'package:flutter_application/udemy/section6/section6_main.dart';

class UdemyMain extends StatefulWidget {
  const UdemyMain({super.key});

  @override
  State<UdemyMain> createState() => _UdemyMainState();
}

class _UdemyMainState extends State<UdemyMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  child: Text('Dart Programming', style: TextStyle(fontSize: 30)),
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
                ),
                TextButton(
                  child: Text('Section 5', style: TextStyle(fontSize: 30)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Section5Main();
                        },
                      ),
                    );
                  },
                ),
                TextButton(
                  child: Text('Section 6', style: TextStyle(fontSize: 30)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Section6Main();
                        },
                      ),
                    );
                  },
                ),
                TextButton(
                  child: Text('Section 7', style: TextStyle(fontSize: 30)),
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
                ),
                TextButton(
                  child: Text('Section 8', style: TextStyle(fontSize: 30)),
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
                ),
                TextButton(
                  child: Text('Section 9', style: TextStyle(fontSize: 30)),
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
                ),
                TextButton(
                  child: Text('Section 10', style: TextStyle(fontSize: 30)),
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
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
