// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// enum LoadingState { Initial, Loading, Loaded, Error }

// class CounterState extends Equatable {
//   final int value;
//   final List<int> history;
//   final LoadingState loadingState;

//   @override
//   List<Object> get props => [value, history, loadingState];

//   const CounterState({
//     this.value = 0,
//     this.history = const [],
//     this.loadingState = LoadingState.Initial,
//   });

//   CounterState copyWith({
//     int? value,
//     List<int>? history,
//     LoadingState? loadingState,
//   }) {
//     return CounterState(
//       value: value ?? this.value,
//       history: history ?? this.history,
//       loadingState: loadingState ?? this.loadingState,
//     );
//   }
// }

// class CounterCubit extends Cubit<CounterState> {
//   CounterCubit() : super(CounterState());

//   Future<void> loadData() async {
//     emit(CounterState(loadingState: LoadingState.Loading));
//     await Future.delayed(Duration(seconds: 3));
//     emit(CounterState(loadingState: LoadingState.Loaded));
//   }

//   void changeValue(int value) {
//     if (state.loadingState == LoadingState.Loaded) {
//       emit(
//         state.copyWith(
//           value: state.value + value,
//           history: [state.value + value, ...state.history],
//         ),
//       );
//     }
//   }

//   void clearHistory() {
//     if (state.loadingState == LoadingState.Loaded) {
//       emit(state.copyWith(history: []));
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
//       body: BlocConsumer<CounterCubit, CounterState>(
//         // BlocListener + BlocBuilder
//         listener: (context, state) {
//           print("State changed: $state");
//           if (state.loadingState == LoadingState.Loaded) {
//             if (state.history.length == 5) {
//               print("alert history too long");
//             }
//           }
//         },
//         builder: (context, state) {
//           if (state.loadingState != LoadingState.Loaded) return Center(child: CircularProgressIndicator());
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
//                   BlocSelector<CounterCubit, CounterState, String>(
//                     selector: (state) {
//                       if (state.history.length < 5)
//                         return "Short history";
//                       else
//                         return "Long history";
//                     },
//                     builder: (context, state) {
//                       return Text("$state");
//                     },
//                   ),
//                   SizedBox(height: 30),
//                   Text("${state.value}", style: TextStyle(fontSize: 30)),
//                   SizedBox(height: 30),
//                   Text("History:"),
//                   for (int i = 0; i < state.history.length; i++)
//                     Text(
//                       "${state.history[i]}",
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
