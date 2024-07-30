// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      id: json['id'] as String,
      serviceProviderId: json['serviceProviderId'] as String,
      customerId: json['customerId'] as String,
      serviceId: json['serviceId'] as String,
      vehicleId: (json['vehicleId'] as num?)?.toInt(),
      date: DateTime.parse(json['date'] as String),
      status: json['status'] as String? ?? 'pending',
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceProviderId': instance.serviceProviderId,
      'customerId': instance.customerId,
      'serviceId': instance.serviceId,
      'vehicleId': instance.vehicleId,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
    };
