import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    required String id,
    required String serviceProviderId,
    required String customerId,
    required String bookingId,
    required int amount,
    @JsonKey(fromJson: _fromJson, toJson: _toJson) required DateTime date,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

DateTime _fromJson(Timestamp timestamp) => timestamp.toDate();

Timestamp _toJson(DateTime date) => Timestamp.fromDate(date);
