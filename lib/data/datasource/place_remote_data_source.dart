// ignore_for_file: deprecated_member_use

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:edspert_final_project/data/models/user/place_model.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/failures/failure.dart';
import '../api_endpoints.dart';
import '../types.dart';

abstract class PlaceRemoteDataSource {
  Future<Either<Failure, ListPlace>> getListPlace();
}

class PlaceRemoteDataSourceImpl extends PlaceRemoteDataSource {
  @override
  Future<Either<Failure, ListPlace>> getListPlace() async {
    try {
      final response = await Dio().get(placeUrl);

      ListPlace data = [];
      if (response.statusCode == 200) {
        debugPrint('Status: ${response.statusMessage}');
        for (var value in response.data) {
          final result = Place.fromJson(value);
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
