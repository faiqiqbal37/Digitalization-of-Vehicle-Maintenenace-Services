// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'serviceprovider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceProvider _$ServiceProviderFromJson(Map<String, dynamic> json) {
  return _ServiceProvider.fromJson(json);
}

/// @nodoc
mixin _$ServiceProvider {
  String get id => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get businessName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError; // Optional
  bool? get approvalStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceProviderCopyWith<ServiceProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceProviderCopyWith<$Res> {
  factory $ServiceProviderCopyWith(
          ServiceProvider value, $Res Function(ServiceProvider) then) =
      _$ServiceProviderCopyWithImpl<$Res, ServiceProvider>;
  @useResult
  $Res call(
      {String id,
      String firstname,
      String lastname,
      String businessName,
      String phoneNumber,
      String email,
      String password,
      String? location,
      bool? approvalStatus});
}

/// @nodoc
class _$ServiceProviderCopyWithImpl<$Res, $Val extends ServiceProvider>
    implements $ServiceProviderCopyWith<$Res> {
  _$ServiceProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? businessName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? password = null,
    Object? location = freezed,
    Object? approvalStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceProviderImplCopyWith<$Res>
    implements $ServiceProviderCopyWith<$Res> {
  factory _$$ServiceProviderImplCopyWith(_$ServiceProviderImpl value,
          $Res Function(_$ServiceProviderImpl) then) =
      __$$ServiceProviderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String firstname,
      String lastname,
      String businessName,
      String phoneNumber,
      String email,
      String password,
      String? location,
      bool? approvalStatus});
}

/// @nodoc
class __$$ServiceProviderImplCopyWithImpl<$Res>
    extends _$ServiceProviderCopyWithImpl<$Res, _$ServiceProviderImpl>
    implements _$$ServiceProviderImplCopyWith<$Res> {
  __$$ServiceProviderImplCopyWithImpl(
      _$ServiceProviderImpl _value, $Res Function(_$ServiceProviderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? businessName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? password = null,
    Object? location = freezed,
    Object? approvalStatus = freezed,
  }) {
    return _then(_$ServiceProviderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceProviderImpl implements _ServiceProvider {
  const _$ServiceProviderImpl(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.businessName,
      required this.phoneNumber,
      required this.email,
      required this.password,
      this.location,
      this.approvalStatus});

  factory _$ServiceProviderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceProviderImplFromJson(json);

  @override
  final String id;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String businessName;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String password;
  @override
  final String? location;
// Optional
  @override
  final bool? approvalStatus;

  @override
  String toString() {
    return 'ServiceProvider(id: $id, firstname: $firstname, lastname: $lastname, businessName: $businessName, phoneNumber: $phoneNumber, email: $email, password: $password, location: $location, approvalStatus: $approvalStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceProviderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstname, lastname,
      businessName, phoneNumber, email, password, location, approvalStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceProviderImplCopyWith<_$ServiceProviderImpl> get copyWith =>
      __$$ServiceProviderImplCopyWithImpl<_$ServiceProviderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceProviderImplToJson(
      this,
    );
  }
}

abstract class _ServiceProvider implements ServiceProvider {
  const factory _ServiceProvider(
      {required final String id,
      required final String firstname,
      required final String lastname,
      required final String businessName,
      required final String phoneNumber,
      required final String email,
      required final String password,
      final String? location,
      final bool? approvalStatus}) = _$ServiceProviderImpl;

  factory _ServiceProvider.fromJson(Map<String, dynamic> json) =
      _$ServiceProviderImpl.fromJson;

  @override
  String get id;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get businessName;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  String get password;
  @override
  String? get location;
  @override // Optional
  bool? get approvalStatus;
  @override
  @JsonKey(ignore: true)
  _$$ServiceProviderImplCopyWith<_$ServiceProviderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
