import 'package:cloud_firestore/cloud_firestore.dart';
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
    @JsonKey(fromJson: _fromJson, toJson: _toJson) required DateTime date,
    @Default('pending') String status, // Default value
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}

DateTime _fromJson(Timestamp timestamp) => timestamp.toDate();

Timestamp _toJson(DateTime date) => Timestamp.fromDate(date);
