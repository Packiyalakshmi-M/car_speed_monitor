import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:car_speed_monitor/bloc/car_speed_bloc/car_speed_event.dart';
import 'package:car_speed_monitor/bloc/car_speed_bloc/car_speed_state.dart';

class CarSpeedBloc extends Bloc<CarSpeedEvent, CarSpeedState> {
  final Random _random = Random();

  CarSpeedBloc() : super(CarSpeedState(car1Speed: 0, car2Speed: 0)) {
    on<UpdateSpeed>((event, emit) {
      emit(CarSpeedState(
        car1Speed: _random.nextDouble() * 150,
        car2Speed: _random.nextDouble() * 150,
      ));
    });

    Timer.periodic(const Duration(seconds: 1), (timer) {
      add(UpdateSpeed());
    });
  }
}
