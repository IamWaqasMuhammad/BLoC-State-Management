import 'package:equatable/equatable.dart';

class CheckBoxState extends Equatable {
  final bool isChecked;
  const CheckBoxState({this.isChecked = false});

  CheckBoxState copyWith({bool? isChecked}) {
    return CheckBoxState(isChecked: isChecked ?? this.isChecked);
  }

  @override
  List<Object> get props => [isChecked];
}
