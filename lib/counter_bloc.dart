import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_app/counter_state.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  //CounterBloc(CounterState initialState) : super(initialState);
  CounterBloc() : super(CounterState()) {
    on<IncrementEvent>(_onIncrementEvent);

  }

  void _onIncrementEvent(CounterEvent event, Emitter<CounterState> emit) {
   emit(CounterState(counter: 0)..counter += 1);
  }

}// End of class