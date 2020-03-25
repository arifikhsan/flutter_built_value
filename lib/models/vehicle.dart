library vehicle;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_built_value/models/serializers.dart';

part 'vehicle.g.dart';

abstract class Vehicle implements Built<Vehicle, VehicleBuilder> {
  VehicleType get type;
  String get brand;
  double get price;
  @nullable
  bool get someNullableValue;
  BuiltList<String> get passengernames;

  Vehicle._();

  factory Vehicle([updates(VehicleBuilder b)]) = _$Vehicle;

  String toJson() {
    return json.encode(serializers.serializeWith(Vehicle.serializer, this));
  }

  static Vehicle fromJson(String jsonString) {
    return serializers.deserializeWith(
        Vehicle.serializer, json.decode(jsonString));
  }

  static Serializer<Vehicle> get serializer => _$vehicleSerializer;
}

class VehicleType extends EnumClass {
  static const VehicleType car = _$car;
  static const VehicleType motorbike = _$motorbike;
  static const VehicleType train = _$train;
  static const VehicleType plane = _$plane;

  const VehicleType._(String name) : super(name);

  static BuiltSet<VehicleType> get values => _$values;
  static VehicleType valueOf(String name) => _$valueOf(name);
  static Serializer<VehicleType> get serializer => _$vehicleTypeSerializer;
}
