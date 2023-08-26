// ignore_for_file: deprecated_member_use

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:edspert_final_project/data/api_endpoints.dart';
import 'package:edspert_final_project/data/models/user/user_model.dart';
import 'package:edspert_final_project/data/types.dart';

import '../../domain/failures/failure.dart';
import '../network_request.dart';

abstract class UserRemoteDataSource {
  Future<Either<Failure, ListUser>> getListUser();
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  @override
  Future<Either<Failure, ListUser>> getListUser() async {
    try {
      final request = Request();

      // final response = await Dio().get(userUrl);
      final response = await request.get(userUrl);

      ListUser users = [];
      if (response.statusCode == 200) {
        // debugPrint('Status: ${response.statusMessage}');
        for (var value in response.data["data"]) {
          final result = User.fromJson(value);
          users.add(result);
        }
        return Right(users);
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
