import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin.freezed.dart';
part 'admin.g.dart';

@freezed
class Admin with _$Admin {
  const factory Admin({
    required int id,
    required String firstname,
    required String lastname,
    required String email,
    required String password,
  }) = _Admin;

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);
}
