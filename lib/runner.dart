import 'package:flutter_built_value/models/vehicle.dart';

class Runner {
  static void runCode() {
    var car = Vehicle(
      (b) => b
        ..type = VehicleType.car
        ..brand = 'Tesla'
        ..price = 100000
        ..passengernames.addAll(['John', 'Sophia', 'Dave', 'Linda']),
    );
    var copiedTrain = car.rebuild(
      (b) => b
        ..brand = 'KAI'
        ..type = VehicleType.train,
    );
    print(car);
    print(copiedTrain);

    final carJson = car.toJson();
    print(carJson);
    final carFromJson = Vehicle.fromJson(carJson).rebuild(
      (b) => b..price = 2000,
    );
    print(carFromJson);
  }
}
