import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/feature/checkbox/presentation/bloc/check_box_event.dart';
import 'package:bloc_state_management/feature/checkbox/presentation/bloc/check_box_state.dart';

class CheckBoxBloc extends Bloc<CheckBoxEvent, CheckBoxState> {
  CheckBoxBloc() : super(CheckBoxState()) {
    on<CheckBoxCheckEvent>(_isChecked);
  }

  void _isChecked(CheckBoxCheckEvent event, Emitter<CheckBoxState> emit) {
    emit(state.copyWith(isChecked: !state.isChecked));
  }
}
