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
    return BlocProvider(
      create: (context) => SliderBloc(),
      child: BlocProvider(
        create: (context) => SwitchBloc(),
        child: BlocProvider(
          create: (_) => CounterBloc(),
          child: MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                  colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
          home: SliderScreen(),
        ),
      ),
    ),);
  }
}
