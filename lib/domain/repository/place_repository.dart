// ignore_for_file: file_names

import 'package:dartz/dartz.dart';

import '../../data/types.dart';
import '../failures/failure.dart';

abstract class PlaceRepository {
  Future<Either<Failure, ListPlace>> getListPlace();
  Future<Either<Failure, ListPlace>> postListPlace();
  Future<Either<Failure, ListPlace>> putListPlace();
}
