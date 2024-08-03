// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackImpl _$$FeedbackImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackImpl(
      id: json['id'] as String,
      serviceProviderId: json['serviceProviderId'] as String,
      customerId: json['customerId'] as String,
      bookingId: json['bookingId'] as String,
      feedback: (json['feedback'] as num).toInt(),
    );

Map<String, dynamic> _$$FeedbackImplToJson(_$FeedbackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceProviderId': instance.serviceProviderId,
      'customerId': instance.customerId,
      'bookingId': instance.bookingId,
      'feedback': instance.feedback,
    };
