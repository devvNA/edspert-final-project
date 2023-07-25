import 'package:freezed_annotation/freezed_annotation.dart';
part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class Book with _$Book {
  factory Book({
    @Default('') String title,
    @Default('') String subtitle,
    @Default('') String isbn13,
    @Default('') String price,
    @Default('') String image,
    @Default('') String url,
  }) = _Book;

  factory Book.fromJson(Map<String, Object?> json) => _$BookFromJson(json);
}
