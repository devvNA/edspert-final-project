import 'package:freezed_annotation/freezed_annotation.dart';
part 'detail_book_model.freezed.dart';
part 'detail_book_model.g.dart';

@freezed
class DetailBook with _$DetailBook {
  factory DetailBook({
    @Default('') String title,
    @Default('') String subtitle,
    @Default(' ') String isbn13,
    @Default('') String price,
    @Default('') String image,
    @Default('') String url,
  }) = _DetailBook;

  factory DetailBook.fromJson(Map<String, Object?> json) =>
      _$DetailBookFromJson(json);
}
