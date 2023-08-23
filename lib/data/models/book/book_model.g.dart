// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      title: json['title'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      subtitle: json['subtitle'] as String? ?? '',
      isbn13: json['isbn13'] as String? ?? '',
      price: json['price'] as String? ?? '',
      image: json['image'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'subtitle': instance.subtitle,
      'isbn13': instance.isbn13,
      'price': instance.price,
      'image': instance.image,
      'url': instance.url,
    };
