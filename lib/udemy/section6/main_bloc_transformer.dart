// import 'package:bloc_concurrency/bloc_concurrency.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// abstract class IStorage {
//   void saveValue(int value);

//   Future<int> getValue();
// }

// class Storage implements IStorage {
//   @override
//   Future<int> getValue() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getInt('counter') ?? 0;
//   }

//   @override
//   Future<void> saveValue(int value) async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setInt('counter', value);
//   }
// }

// @immutable
// abstract class CounterEvent {}

// class CounterIncrement implements CounterEvent {}

// class CounterBloc extends Bloc<CounterEvent, int> {
//   IStorage storage;

//   CounterBloc(this.storage) : super(0) {
//     storage.getValue().then((value) => emit(value));

//     on<CounterIncrement>((event, emit) async {
//       await Future.delayed(Duration(seconds: 2));
//       storage.saveValue(state + 1);
//       emit(state + 1);
//     }, transformer: droppable()); //other libs https://pub.dev/packages/bloc
//   }
// }

// class SimpleBlocObserver extends BlocObserver {
//   const SimpleBlocObserver();

//   @override
//   void onCreate(BlocBase<dynamic> bloc) {
//     super.onCreate(bloc);
//     print('onCreate -- bloc: ${bloc.runtimeType}');
//   }

//   @override
//   void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
//     super.onEvent(bloc, event);
//     print('onEvent -- bloc: ${bloc.runtimeType}, event: $event');
//   }

//   @override
//   void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
//     super.onChange(bloc, change);
//     print('onChange -- bloc: ${bloc.runtimeType}, change: $change');
//   }

//   @override
//   void onTransition(
//       Bloc<dynamic, dynamic> bloc,
//       Transition<dynamic, dynamic> transition,
//       ) {
//     super.onTransition(bloc, transition);
//     print('onTransition -- bloc: ${bloc.runtimeType}, transition: $transition');
//   }

//   @override
//   void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
//     print('onError -- bloc: ${bloc.runtimeType}, error: $error');
//     super.onError(bloc, error, stackTrace);
//   }

//   @override
//   void onClose(BlocBase<dynamic> bloc) {
//     super.onClose(bloc);
//     print('onClose -- bloc: ${bloc.runtimeType}');
//   }
// }

// void main() {
//   Bloc.observer = const SimpleBlocObserver();
//   runApp(
//     RepositoryProvider<IStorage>(
//       create: (context) => Storage(),
//       child: App(),
//     ),
//   );
// }

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CounterBloc(context.read<IStorage>()),
//       child: MaterialApp(
//         home: SafeArea(
//           child: Page(),
//         ),
//       ),
//     );
//   }
// }

// class Page extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Body(),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           context.read<CounterBloc>().add(new CounterIncrement());
//         },
//       ),
//     );
//   }
// }

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CounterBloc, int>(
//       builder: (context, state) {
//         return Center(
//           child: Text(
//             "$state",
//             style: TextStyle(fontSize: 30),
//           ),
//         );
//       },
//     );
//   }
// }
