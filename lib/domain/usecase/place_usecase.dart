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

  Future<Either<Failure, ListPlace>> postListPlace() async {
    return await repository.postListPlace();
  }

  Future<Either<Failure, ListPlace>> putListPlace() async {
    return await repository.putListPlace();
  }
}
