// ignore_for_file: deprecated_member_use

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/failures/failure.dart';
import '../api_endpoints.dart';
import '../models/book/book_model.dart';
import '../network_request.dart';
import '../types.dart';

abstract class BookRemoteDataSource {
  Future<Either<Failure, ListBook>> getListBook();
}

class BookRemoteDataSourceImpl extends BookRemoteDataSource {
  @override
  Future<Either<Failure, ListBook>> getListBook() async {
    try {
      final request = Request();

      // final response = await Dio().get(bookUrl);
      final response = await request.get(bookUrl);

      ListBook books = [];
      if (response.statusCode == 200) {
        // debugPrint('Status: ${response.statusMessage}');
        for (var value in response.data["books"]) {
          final result = Book.fromJson(value);
          books.add(result);
        }
        return Right(books);
      }
      // debugPrint('Data: ${response.data}');
      return Left(ConnectionFailure(response.data['message']));
    } on DioError catch (_) {
      return const Left(ConnectionFailure("Terjadi Kesalahan"));
    } catch (_) {
      return const Left(ParsingFailure("Tidak dapat memparsing respon"));
    }
  }
}
