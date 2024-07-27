import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    required int id,
    required int serviceProviderId,
    required int customerId,
    required int serviceId,
    int? vehicleId, // Optional
    required DateTime date,
    @Default('pending') String status, // Default value
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);
}
