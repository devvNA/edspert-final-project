import 'package:dartz/dartz.dart';

import '../../domain/failures/failure.dart';
import '../../domain/repository/user_repository.dart';
import '../datasource/user_remote_data_source.dart';
import '../types.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl({required this.remoteDataSource});

  final UserRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, ListUser>> getListUser() async =>
      await remoteDataSource.getListUser();
}
