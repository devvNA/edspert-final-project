import 'package:freezed_annotation/freezed_annotation.dart';
part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
class Place with _$Place {
  factory Place({
    @Default('') String nama,
    @Default(0) num langitude,
    @Default(0) num longitude,
    @Default('') String alamat,
    @Default('') String telepon,
  }) = _Place;

  factory Place.fromJson(Map<String, Object?> json) => _$PlaceFromJson(json);
}
