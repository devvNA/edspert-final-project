import 'package:dartz/dartz.dart';

import '../../data/types.dart';
import '../failures/failure.dart';
import '../repository/user_repository.dart';

class UserUseCase {
  UserUseCase({
    required this.repository,
  });

  UserRepository repository;

  Future<Either<Failure, ListUser>> getListUser() async {
    return await repository.getListUser();
  }
}
