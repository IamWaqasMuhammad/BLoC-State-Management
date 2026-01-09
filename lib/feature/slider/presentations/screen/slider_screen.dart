import 'package:bloc_state_management/feature/slider/presentations/bloc/switch_bloc.dart';
import 'package:bloc_state_management/feature/slider/presentations/bloc/switch_event.dart';
import 'package:bloc_state_management/feature/slider/presentations/bloc/switch_state.dart';
import 'package:bloc_state_management/feature/slider/presentations/slider_bloc/slider_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../slider_bloc/slider_bloc.dart';
import '../slider_bloc/slider_state.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider & Switch'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        elevation: 2,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          BlocBuilder<SliderBloc, SliderState>(
            builder: (context, state) {
              return Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(state.value),
                    borderRadius: BorderRadius.circular(20),
                  )
              );
            },
          ),


          BlocBuilder<SliderBloc, SliderState>(
            builder: (context, state) {
              return Center(
                child: Slider(
                  activeColor: Colors.lightGreen,
                  value: state.value,
                  onChanged: (value) {
                    context.read<SliderBloc>().add(
                        ChangeValueEvent(sliderValue: value));
                  },
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text('notification'),
              BlocBuilder<SwitchBloc, SwitchState>(
                builder: (context, state) {
                  return CupertinoSwitch(
                      value: state.isSwitched, onChanged: (value) {
                    context.read<SwitchBloc>().add(
                        EnableOrDisableNotificationEvent());
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
