import 'package:flutter_application/flutter_mapp/bloc/counter_event.dart';
import 'package:flutter_application/flutter_mapp/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterIncrementPressed>((event, emit) {
      emit(CounterState(state.count + 1)); //
    });
    on<CounterDecrementPressed>((event, emit) {
      emit(CounterState(state.count - 1)); //
    });
     on<CounterResetPressed>((event, emit) {
      emit(CounterState(0)); //
    });
  }
}
