// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      nama: json['nama'] as String? ?? '',
      langitude: json['langitude'] as num? ?? 0,
      longitude: json['longitude'] as num? ?? 0,
      alamat: json['alamat'] as String? ?? '',
      telepon: json['telepon'] as String? ?? '',
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'nama': instance.nama,
      'langitude': instance.langitude,
      'longitude': instance.longitude,
      'alamat': instance.alamat,
      'telepon': instance.telepon,
    };
