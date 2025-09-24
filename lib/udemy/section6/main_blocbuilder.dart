import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
}

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Page(),
      ),
    ),
  );
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        body: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Center(
              child: Text(
                "$state",
                style: TextStyle(fontSize: 30),
              ),
            );
          },
        ),
        floatingActionButton: FloatBtn(),
      ),
    );
  }
}

class FloatBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        context.read<CounterCubit>().increment();
        //BlocProvider.of<CounterCubit>(context).increment();
      },
    );
  }
}
