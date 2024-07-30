// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceImpl _$$ServiceImplFromJson(Map<String, dynamic> json) =>
    _$ServiceImpl(
      id: json['id'] as String,
      serviceProviderId: json['serviceProviderId'] as String,
      serviceName: json['serviceName'] as String,
      serviceType: json['serviceType'] as String,
      description: json['description'] as String?,
      price: json['price'] as String,
      eta: json['eta'] as String?,
      vehicleType: json['vehicleType'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ServiceImplToJson(_$ServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceProviderId': instance.serviceProviderId,
      'serviceName': instance.serviceName,
      'serviceType': instance.serviceType,
      'description': instance.description,
      'price': instance.price,
      'eta': instance.eta,
      'vehicleType': instance.vehicleType,
      'image': instance.image,
    };
