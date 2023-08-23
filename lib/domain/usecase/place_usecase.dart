import 'package:dartz/dartz.dart';

import '../../data/types.dart';
import '../failures/failure.dart';
import '../repository/place_repository.dart';

class PlaceUseCase {
  PlaceRepository repository;

  PlaceUseCase({
    required this.repository,
  });

  Future<Either<Failure, ListPlace>> getListPlace() async {
    return await repository.getListPlace();
  }

  Future<Either<Failure, ListPlace>> deleteListPlace() async {
    return await repository.getListPlace();
  }

  Future<Either<Failure, ListPlace>> updateListPlace() async {
    return await repository.getListPlace();
  }

  Future<Either<Failure, ListPlace>> pullListPlace() async {
    return await repository.getListPlace();
  }

  Future<Either<Failure, ListPlace>> pushListPlace() async {
    return await repository.getListPlace();
  }
}
