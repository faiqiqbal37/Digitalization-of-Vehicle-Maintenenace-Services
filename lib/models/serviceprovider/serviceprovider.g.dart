// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serviceprovider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceProviderImpl _$$ServiceProviderImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceProviderImpl(
      id: (json['id'] as num).toInt(),
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      businessName: json['businessName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      location: json['location'] as String?,
      approvalStatus: json['approvalStatus'] as bool?,
    );

Map<String, dynamic> _$$ServiceProviderImplToJson(
        _$ServiceProviderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'businessName': instance.businessName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'password': instance.password,
      'location': instance.location,
      'approvalStatus': instance.approvalStatus,
    };
