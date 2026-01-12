import 'package:bloc_state_management/feature/checkbox/presentation/bloc/check_box_bloc.dart';
import 'package:bloc_state_management/feature/checkbox/presentation/screens/check_box_screen.dart';
import 'package:bloc_state_management/feature/counter/presentation/bloc/counter_bloc.dart';
import 'package:bloc_state_management/feature/counter/presentation/screens/counter_screen.dart';
import 'package:bloc_state_management/feature/slider/presentations/screen/slider_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/slider/presentations/bloc/switch_bloc.dart';
import 'feature/slider/presentations/slider_bloc/slider_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SliderBloc()),
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => SwitchBloc()),
        BlocProvider(create: (context) => CheckBoxBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: CheckBoxScreen(),
      ),
    );
  }
}
