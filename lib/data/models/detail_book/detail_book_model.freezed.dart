// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailBook _$DetailBookFromJson(Map<String, dynamic> json) {
  return _DetailBook.fromJson(json);
}

/// @nodoc
mixin _$DetailBook {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get isbn13 => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailBookCopyWith<DetailBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailBookCopyWith<$Res> {
  factory $DetailBookCopyWith(
          DetailBook value, $Res Function(DetailBook) then) =
      _$DetailBookCopyWithImpl<$Res, DetailBook>;
  @useResult
  $Res call(
      {String title,
      String subtitle,
      String isbn13,
      String price,
      String image,
      String url});
}

/// @nodoc
class _$DetailBookCopyWithImpl<$Res, $Val extends DetailBook>
    implements $DetailBookCopyWith<$Res> {
  _$DetailBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? isbn13 = null,
    Object? price = null,
    Object? image = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      isbn13: null == isbn13
          ? _value.isbn13
          : isbn13 // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailBookCopyWith<$Res>
    implements $DetailBookCopyWith<$Res> {
  factory _$$_DetailBookCopyWith(
          _$_DetailBook value, $Res Function(_$_DetailBook) then) =
      __$$_DetailBookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String subtitle,
      String isbn13,
      String price,
      String image,
      String url});
}

/// @nodoc
class __$$_DetailBookCopyWithImpl<$Res>
    extends _$DetailBookCopyWithImpl<$Res, _$_DetailBook>
    implements _$$_DetailBookCopyWith<$Res> {
  __$$_DetailBookCopyWithImpl(
      _$_DetailBook _value, $Res Function(_$_DetailBook) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? isbn13 = null,
    Object? price = null,
    Object? image = null,
    Object? url = null,
  }) {
    return _then(_$_DetailBook(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      isbn13: null == isbn13
          ? _value.isbn13
          : isbn13 // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailBook implements _DetailBook {
  _$_DetailBook(
      {this.title = '',
      this.subtitle = '',
      this.isbn13 = ' ',
      this.price = '',
      this.image = '',
      this.url = ''});

  factory _$_DetailBook.fromJson(Map<String, dynamic> json) =>
      _$$_DetailBookFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String subtitle;
  @override
  @JsonKey()
  final String isbn13;
  @override
  @JsonKey()
  final String price;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String url;

  @override
  String toString() {
    return 'DetailBook(title: $title, subtitle: $subtitle, isbn13: $isbn13, price: $price, image: $image, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailBook &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.isbn13, isbn13) || other.isbn13 == isbn13) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, subtitle, isbn13, price, image, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailBookCopyWith<_$_DetailBook> get copyWith =>
      __$$_DetailBookCopyWithImpl<_$_DetailBook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailBookToJson(
      this,
    );
  }
}

abstract class _DetailBook implements DetailBook {
  factory _DetailBook(
      {final String title,
      final String subtitle,
      final String isbn13,
      final String price,
      final String image,
      final String url}) = _$_DetailBook;

  factory _DetailBook.fromJson(Map<String, dynamic> json) =
      _$_DetailBook.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get isbn13;
  @override
  String get price;
  @override
  String get image;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_DetailBookCopyWith<_$_DetailBook> get copyWith =>
      throw _privateConstructorUsedError;
}
