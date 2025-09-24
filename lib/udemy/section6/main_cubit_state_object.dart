// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// abstract class CounterState extends Equatable {
//   List<Object> get props => [];
// }

// class CounterInitial extends CounterState {}

// class CounterLoading extends CounterState {}

// class CounterLoaded extends CounterState {
//   final int value;
//   final List<int> history;

//   CounterLoaded({
//     required this.value,
//     required this.history,
//   });

//   CounterLoaded copyWith({
//     int? value,
//     List<int>? history,
//   }) {
//     return CounterLoaded(
//       value: value ?? this.value,
//       history: history ?? this.history,
//     );
//   }

//   @override
//   List<Object> get props => [value, history];
// }

// class CounterCubit extends Cubit<CounterState> {
//   CounterCubit() : super(CounterInitial());

//   Future<void> loadData() async {
//     emit(CounterLoading());
//     await Future.delayed(Duration(seconds: 3));
//     emit(CounterLoaded(value: 0, history: []));
//   }

//   void changeValue(int value) {
//     if (state is CounterLoaded) {
//       var loadedState = state as CounterLoaded;
//       emit(
//         loadedState.copyWith(
//           value: loadedState.value + value,
//           history: [loadedState.value + value, ...loadedState.history],
//         ),
//       );
//     }
//   }

//   void clearHistory() {
//     if (state is CounterLoaded) {
//       var loadedState = state as CounterLoaded;
//       emit(loadedState.copyWith(history: []));
//     }
//   }
// }

// void main() {
//   runApp(
//     BlocProvider(
//       create: (context) => CounterCubit()..loadData(), //run at first
//       child: MaterialApp(
//         home: SafeArea(
//           child: Page(),
//         ),
//       ),
//     ),
//   );
// }

// class Page extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocConsumer<CounterCubit, CounterState>( // BlocListener + BlocBuilder
//         listener: (context, state) {
//           print("State changed: $state");
//           if (state is CounterLoaded) {
//             var loadedState = state as CounterLoaded;
//             if (loadedState.history.length == 5) {
//               print("alert history too long");
//             }
//           }
//         },
//         builder: (context, state) {
//           if (state is! CounterLoaded) return Center(child: CircularProgressIndicator());
//           var loadedState = state as CounterLoaded;
//           return Scaffold(
//             body: Container(
//               width: double.infinity,
//               child: Column(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () => context.read<CounterCubit>().changeValue(1),
//                     child: Text("Increase"),
//                   ),
//                   ElevatedButton(
//                     onPressed: () => context.read<CounterCubit>().changeValue(-1),
//                     child: Text("Decrease"),
//                   ),
//                   ElevatedButton(
//                     onPressed: () => context.read<CounterCubit>().clearHistory(),
//                     child: Text("Clear history"),
//                   ),
//                   SizedBox(height: 30),
//                   Text("${loadedState.value}", style: TextStyle(fontSize: 30)),
//                   SizedBox(height: 30),
//                   Text("History:"),
//                   for (int i = 0; i < loadedState.history.length; i++)
//                     Text(
//                       "${loadedState.history[i]}",
//                     )
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
