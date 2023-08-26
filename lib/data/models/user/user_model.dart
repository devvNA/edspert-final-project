// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    @Default(0) int id,
    @Default('') String email,
    @JsonKey(name: 'first_name') @Default('') String firstName,
    @JsonKey(name: 'last_name') @Default('') String lastName,
    @Default('') String avatar,
    @JsonKey(name: "support") Support? support,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class Support with _$Support {
  factory Support({
    @Default('') String url,
    @Default('') String text,
  }) = _Support;

  factory Support.fromJson(Map<String, Object?> json) =>
      _$SupportFromJson(json);
}
