import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestCubit extends Cubit<int> {
  TestCubit() : super(4);
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: BlocProvider(
          create: (context) => TestCubit(),
          child: Body(),
        ),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestCubit, int>(
      builder: (context, state) {
        TestCubit testCubit = context.read<TestCubit>();
        return Container(
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return BlocProvider.value(
                    value: testCubit,
                    child: AlertDialog(
                      title: Text("Title"),
                      content: Center(
                        child: BlocBuilder<TestCubit, int>(
                          builder: (context, state) {
                            return Text("Test state $state");
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Text("Test state 2 $state"),
          ),
        );
      },
    );
  }
}
