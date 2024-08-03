import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    required String id,
    required String serviceProviderId,
    required String customerId,
    required String serviceId,
    String? vehicleId, // Optional
    required DateTime date,
    @Default('pending') String status, // Default value
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}
