// ignore_for_file: deprecated_member_use

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/failures/failure.dart';
import '../api_endpoints.dart';
import '../models/book/book_model.dart';
import '../types.dart';

abstract class BookRemoteDataSource {
  Future<Either<Failure, ListBook>> getListBook();
}

class BookRemoteDataSourceImpl extends BookRemoteDataSource {
  @override
  @override
  Future<Either<Failure, ListBook>> getListBook() async {
    try {
      final response = await Dio().get(bookUrl);

      ListBook data = [];
      if (response.statusCode == 200) {
        debugPrint('Status: ${response.statusMessage}');
        for (var value in response.data) {
          final result = Book.fromJson(value);
          data.add(result);
        }
      }
      debugPrint('Data: ${response.data}');
      return Right(data);
    } on DioError catch (_) {
      return const Left(ConnectionFailure("Terjadi Kesalahan"));
    } catch (_) {
      return const Left(ParsingFailure("Tidak dapat memparsing respon"));
    }
  }
}
