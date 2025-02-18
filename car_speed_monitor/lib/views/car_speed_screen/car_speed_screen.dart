import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_speed_monitor/bloc/car_speed_bloc/car_speed_bloc.dart';
import 'package:car_speed_monitor/bloc/car_speed_bloc/car_speed_state.dart';

class CarSpeedScreen extends StatelessWidget {
  const CarSpeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Car Speed Monitor")),
      body: Center(
        child: BlocBuilder<CarSpeedBloc, CarSpeedState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSpeedCard("Car 1", state.car1Speed),
                const SizedBox(height: 20),
                _buildSpeedCard("Car 2", state.car2Speed),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildSpeedCard(String carName, double speed) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(carName,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(
              "${speed.toStringAsFixed(1)} km/h",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: speed > 100 ? Colors.red : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
