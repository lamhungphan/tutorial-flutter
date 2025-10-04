import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
}

class ThemeCubit extends Cubit<int> {
  ThemeCubit() : super(0);
}

Widget mainBlocProvider() {
  return
  // BlocProvider(
  //   create: (context) => CounterCubit(),
  //   child: MaterialApp(
  //     home: SafeArea(
  //       child: Scaffold(
  //         body: Center(),
  //       ),
  //     ),
  //   ),
  // ),
  // MultiBlocProvider(
  //   providers: [
  //     BlocProvider(
  //       create: (context) => CounterCubit(),
  //     ),
  //     BlocProvider(
  //       create: (context) => ThemeCubit(),
  //     ),
  //   ],
  //   child: MaterialApp(
  //     home: SafeArea(
  //       child: Scaffold(
  //         body: Center(),
  //       ),
  //     ),
  //   ),
  // ),
  BlocProvider(
    create: (context) => CounterCubit(),
    child: MaterialApp(home: SafeArea(child: Scaffold(body: Body()))),
  );
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<CounterCubit>(
        context,
      ), //reuse for child page, dialog
      child: Center(),
    );
  }
}
