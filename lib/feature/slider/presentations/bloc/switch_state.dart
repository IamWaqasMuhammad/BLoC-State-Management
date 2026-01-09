import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  bool isSwitched;

  SwitchState({this.isSwitched = false});

  SwitchState copyWith({bool? isSwitched}) {
    return SwitchState(isSwitched: isSwitched ?? this.isSwitched);
  }

  @override
  List<Object?> get props => [isSwitched];
}
