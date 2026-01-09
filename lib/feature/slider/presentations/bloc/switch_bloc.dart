import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/feature/slider/presentations/bloc/switch_event.dart';
import 'package:bloc_state_management/feature/slider/presentations/bloc/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<EnableOrDisableNotificationEvent>(_enableOrDisableNotification);
  }

  void _enableOrDisableNotification(
    EnableOrDisableNotificationEvent event,
    Emitter<SwitchState> emit,
  ) {
    emit(state.copyWith(isSwitched: !state.isSwitched));
  }
}
