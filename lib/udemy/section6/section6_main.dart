import 'package:flutter/material.dart';
import 'package:flutter_application/udemy/section6/demo_3_layers.dart';
import 'package:flutter_application/udemy/section6/demo_bloc_cubit_counter.dart';
import 'package:flutter_application/udemy/section6/demo_bloc_dialog.dart';
import 'package:flutter_application/udemy/section6/demo_bloc_transformer.dart';
import 'package:flutter_application/udemy/section6/demo_bloc_builder.dart';
import 'package:flutter_application/udemy/section6/demo_bloc_provider.dart';
import 'package:flutter_application/udemy/section6/demo_create_destroy_bloc_widget.dart';
import 'package:flutter_application/udemy/section6/demo_state_enum.dart';
import 'package:flutter_application/udemy/section6/demo_state_object.dart';
import 'package:flutter_application/udemy/section6/demo_repository.dart';

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
                    child: Text(
                      '3 Layer with Bloc',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return main3Layer();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Bloc Cubit Counter',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BlocCubitCounterPage();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Bloc Dialog Bottomsheet',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return mainDialogBottomsheet();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Bloc Transformer',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return mainBlocTransformer();
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
                            return mainBlocBuilder();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Bloc Provider',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return mainBlocProvider();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Destroy Bloc Widget',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return mainBlocLifecycle();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Cubit State Enum',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return mainStateEnum();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Cubit State Object',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return mainStateObject();
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
                            return mainRepository();
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
