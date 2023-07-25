// ignore_for_file: deprecated_member_use

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../domain/failures/failure.dart';
import '../api_endpoints.dart';
import '../models/book/book_model.dart';
import '../types.dart';

abstract class BookRemoteDataSource {
  Future<Either<Failure, ListBook>> getListBook();
}

class BookRemoteDataSourceImpl extends BookRemoteDataSource {
  @override
  Future<Either<Failure, ListBook>> getListBook() async {
    try {
      final response = await Dio().get(bookUrl);

      ListBook data = [];
      for (var value in response.data['books']) {
        final result = Book.fromJson(value);
        data.add(result);
      }
      debugPrint(response.data.toString());
      return Right(data);
    } on DioError catch (_) {
      return const Left(ConnectionFailure("Terjadi Kesalahan"));
    } catch (_) {
      return const Left(ParsingFailure("Tidak dapat memparsing respon"));
    }
  }
}
