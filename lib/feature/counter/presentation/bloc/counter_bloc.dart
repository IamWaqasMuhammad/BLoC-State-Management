import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/feature/counter/presentation/bloc/counter_event.dart';
import 'package:bloc_state_management/feature/counter/presentation/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncrementCounterEvent>(_increment);
    on<DecrementCounterEvent>(_decrement);

  }

  void _increment(IncrementCounterEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(DecrementCounterEvent event, Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter-1));
  }
}
