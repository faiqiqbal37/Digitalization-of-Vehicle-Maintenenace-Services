import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';

@freezed
class Car with _$Car {
  const factory Car({
    required int id,
    required int customerId,
    required String vehicleMake,
    required String vehicleModel,
    required String vehicleType,
    String? registration, // Optional
    String? image, // Optional, assumed to be a URL or path
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
