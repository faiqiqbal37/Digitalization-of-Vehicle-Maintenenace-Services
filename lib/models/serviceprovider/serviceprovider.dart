import 'package:freezed_annotation/freezed_annotation.dart';

part 'serviceprovider.freezed.dart';
part 'serviceprovider.g.dart';

@freezed
class ServiceProvider with _$ServiceProvider {
  const factory ServiceProvider({
    required int id,
    required String firstname,
    required String lastname,
    required String businessName,
    required String phoneNumber,
    required String email,
    required String password,
    String? location, // Optional
    bool? approvalStatus, // Optional, default could be set as needed
  }) = _ServiceProvider;

  factory ServiceProvider.fromJson(Map<String, dynamic> json) => _$ServiceProviderFromJson(json);
}
