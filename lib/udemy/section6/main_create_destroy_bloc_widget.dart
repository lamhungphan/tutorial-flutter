import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestCubit extends Cubit<int> {
  final int value;

  TestCubit(this.value) : super(value) {
    print("create cubit $value");
  }

  @override
  Future<void> close() {
    print("close cubit $value");
    return super.close();
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Column(
                  children: [Widget1(), Widget2()],
                ),
              );
            },
          );
        },
        child: Text("Dialog"),
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  Widget2({
    super.key,
  }) {
    print("create widget 2");
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestCubit(2),
      lazy: false,
      child: Text("2"),
    );
  }
}

class Widget1 extends StatefulWidget {
  @override
  State<Widget1> createState() => _Widget1State();
}

class _Widget1State extends State<Widget1> {
  @override
  void initState() {
    print("create widget 1");
    super.initState();
  }

  @override
  void dispose() {
    print("dispose widget 1");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestCubit(1),
      child: BodyWidget1(),
    );
  }
}

class BodyWidget1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestCubit, int>(
      builder: (context, state) {
        return Text("1");
      },
    );
  }
}
