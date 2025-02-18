# Flutter - Car Speed Monitor App

This project is a Flutter application that simulates a car speed monitoring system. It displays two car speed values on the screen, which are randomly generated using the Dart math.Random class at an interval of one second. The app utilizes the BLoC state management pattern to handle real-time updates efficiently. If the generated speed exceeds 100 km/hr, the text color changes to red; otherwise, it remains black.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)
- [Author](#author)

## Features

- **Real-time Speed Simulation:** Displays two car speed values, updated every second.
- **State Management with BLoC:** Efficient state management using the BLoC pattern.
- **Dynamic UI Updates:** Speed values update dynamically on the UI.
- **Speed Alert Mechanism:** If a speed exceeds 100 km/hr, its text color changes to red; otherwise, it remains black.
- **Cross-platform Support:** Compatible with both iOS and Android devices.

## Technologies Used

- **Programming Language:** Dart
- **Framework:** Flutter
- **State Management:** flutter_bloc
- **Random Number Generation:** dart:math
- **IDE:** Android Studio / Visual Studio Code
- **Version Control:** Git

## Installation

Follow these steps to get the project up and running locally:

```bash
# Clone the repository
git clone https://github.com/Packiyalakshmi-M/car_speed_monitor.git

# Navigate into the project directory
cd car_speed_monitor

# Install dependencies
flutter pub get
```

## Usage

The following snippet demonstrates how the app generates random speed values inside bloc state management:

```

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


```

## License

This project is open source and available under the MIT License.

## Author

- Packiyalakshmi Murugan
- [LinkedIn Link](https://www.linkedin.com/in/packiyalakshmi-m-7a9844210/)
- [Github link](https://github.com/Packiyalakshmi-M/)
  
