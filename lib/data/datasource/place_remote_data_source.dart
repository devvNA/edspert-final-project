// ignore_for_file: deprecated_member_use

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/failures/failure.dart';
import '../api_endpoints.dart';
import '../models/place/place_model.dart';
import '../network_request.dart';
import '../types.dart';

abstract class PlaceRemoteDataSource {
  Future<Either<Failure, ListPlace>> getListPlace();

  Future<Either<Failure, ListPlace>> postListPlace();

  Future<Either<Failure, ListPlace>> putListPlace();
}

class PlaceRemoteDataSourceImpl extends PlaceRemoteDataSource {
  @override
  Future<Either<Failure, ListPlace>> getListPlace() async {
    try {
      final request = Request();

      // final response = await Dio().get(placeUrl);
      final response = await request.get(placeUrl);

      ListPlace places = [];
      if (response.statusCode == 200) {
        // debugPrint('Status: ${response.statusMessage}');

        for (var value in response.data) {
          final result = Place.fromJson(value);
          places.add(result);
        }
        return Right(places);
      }
      // debugPrint('Data: ${response.data}');
      return Left(ConnectionFailure(response.data['message']));
    } on DioError catch (_) {
      return const Left(ConnectionFailure("Terjadi Kesalahan"));
    } catch (_) {
      return const Left(ParsingFailure("Tidak dapat memparsing respon"));
    }
  }

  @override
  Future<Either<Failure, ListPlace>> postListPlace() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ListPlace>> putListPlace() {
    throw UnimplementedError();
  }
}
