// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      id: json['id'] as String,
      serviceProviderId: json['serviceProviderId'] as String,
      customerId: json['customerId'] as String,
      bookingId: json['bookingId'] as String,
      amount: (json['amount'] as num).toInt(),
        date: json['date'] as DateTime
        ,
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceProviderId': instance.serviceProviderId,
      'customerId': instance.customerId,
      'bookingId': instance.bookingId,
      'amount': instance.amount,
      'date': _toJson(instance.date),
    };
