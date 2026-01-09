

abstract class SliderEvent {
  SliderEvent();

  @override
  List<Object> get props => [];
}

class ChangeValueEvent extends SliderEvent {

  double sliderValue ;
  ChangeValueEvent({required this.sliderValue});

  @override
  List<Object> get props => [sliderValue];
}