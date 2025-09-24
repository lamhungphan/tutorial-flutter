import 'package:flutter/material.dart';
import 'package:flutter_application/udemy/section5/main_alertdialog_bottomsheet_widget.dart';
import 'package:flutter_application/udemy/section5/main_button_widget.dart';
import 'package:flutter_application/udemy/section5/main_card_listtitle_widget.dart';

class Section6Main extends StatefulWidget {
  const Section6Main({super.key});

  @override
  State<Section6Main> createState() => _Section6MainState();
}

class _Section6MainState extends State<Section6Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    child: Text('3 Layer with Bloc', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoAlertDialog();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Bloc Cubit Counter', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoButton();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Bloc Dialog Bottomsheet', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoCardListTile();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Bloc Transformer', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoCardListTile();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Bloc Builder', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoCardListTile();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Bloc Provider', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoCardListTile();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Destroy Bloc Widget', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoCardListTile();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Cubit State Enum', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoCardListTile();
                          },
                        ),
                      );
                    },
                  ),
                   TextButton(
                    child: Text('Cubit State Object', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoCardListTile();
                          },
                        ),
                      );
                    },
                  ),
                   TextButton(
                    child: Text('Repository', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoCardListTile();
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
      ),
    );
  }
}
