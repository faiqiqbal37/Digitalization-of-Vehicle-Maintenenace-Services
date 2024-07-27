// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackImpl _$$FeedbackImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackImpl(
      id: (json['id'] as num).toInt(),
      serviceProviderId: (json['serviceProviderId'] as num).toInt(),
      customerId: (json['customerId'] as num).toInt(),
      bookingId: (json['bookingId'] as num).toInt(),
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
