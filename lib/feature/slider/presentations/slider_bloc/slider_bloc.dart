import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/feature/slider/presentations/slider_bloc/slider_event.dart';
import 'package:bloc_state_management/feature/slider/presentations/slider_bloc/slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState>{
  SliderBloc():super(SliderState( )){
    on<ChangeValueEvent>(_changeValue);
  }

  void _changeValue(ChangeValueEvent event, Emitter<SliderState> emit){
    emit(state.copyWith(value: event.sliderValue));
  }
}