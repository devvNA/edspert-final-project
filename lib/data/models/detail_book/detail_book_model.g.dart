// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailBook _$$_DetailBookFromJson(Map<String, dynamic> json) =>
    _$_DetailBook(
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      isbn13: json['isbn13'] as String? ?? ' ',
      price: json['price'] as String? ?? '',
      image: json['image'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$$_DetailBookToJson(_$_DetailBook instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'isbn13': instance.isbn13,
      'price': instance.price,
      'image': instance.image,
      'url': instance.url,
    };
