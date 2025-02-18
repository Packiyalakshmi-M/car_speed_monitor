import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_speed_monitor/Views/car_speed_screen/car_speed_screen.dart';
import 'package:car_speed_monitor/bloc/car_speed_bloc/car_speed_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CarSpeedBloc(),
        child: const CarSpeedScreen(),
      ),
    );
  }
}
