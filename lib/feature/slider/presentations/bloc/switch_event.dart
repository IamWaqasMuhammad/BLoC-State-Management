import 'package:equatable/equatable.dart';

abstract class SwitchEvent {

  const SwitchEvent();

  @override
  List<Object> get props => [];
}

class EnableOrDisableNotificationEvent extends SwitchEvent {

}