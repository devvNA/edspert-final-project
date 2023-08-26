import 'package:dartz/dartz.dart';
import 'package:edspert_final_project/data/types.dart';

import '../../domain/failures/failure.dart';
import '../../domain/repository/place_repository.dart';
import '../datasource/Place_remote_data_source.dart';

class PlaceRepositoryImpl extends PlaceRepository {
  PlaceRepositoryImpl({required this.remoteDataSource});

  final PlaceRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, ListPlace>> getListPlace() async =>
      await remoteDataSource.getListPlace();

  @override
  Future<Either<Failure, ListPlace>> postListPlace() async =>
      await remoteDataSource.getListPlace();

  @override
  Future<Either<Failure, ListPlace>> putListPlace() async =>
      await remoteDataSource.putListPlace();
}
