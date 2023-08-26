// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:edspert_final_project/data/types.dart';

import '../failures/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, ListUser>> getListUser();
}
