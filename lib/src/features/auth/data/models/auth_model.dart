import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
abstract class AuthModel with _$AuthModel {
  const factory AuthModel({
    required String firstName,
    required String lastName,
    required int age,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, Object?> json) =>
      _$AuthModelFromJson(json);
}
