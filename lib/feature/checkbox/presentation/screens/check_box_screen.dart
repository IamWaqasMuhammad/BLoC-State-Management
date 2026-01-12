import 'package:bloc_state_management/feature/checkbox/presentation/bloc/check_box_bloc.dart';
import 'package:bloc_state_management/feature/checkbox/presentation/bloc/check_box_event.dart';
import 'package:bloc_state_management/feature/checkbox/presentation/bloc/check_box_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBoxScreen extends StatelessWidget {
  const CheckBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box Screen '),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Row(
            children: [
              BlocBuilder<CheckBoxBloc, CheckBoxState>(
                builder: (context, state) {
                  return Checkbox(
                    value: state.isChecked,
                    onChanged: (value) {
                      context.read<CheckBoxBloc>().add(CheckBoxCheckEvent());
                    },
                  );
                },
              ),

              Text('Remember Me'),
            ],
          ),
        ],
      ),
    );
  }
}
