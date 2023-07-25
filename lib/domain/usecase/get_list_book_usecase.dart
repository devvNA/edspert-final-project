import 'package:dartz/dartz.dart';

import '../../data/types.dart';
import '../failures/failure.dart';
import '../repository/Book_repository.dart';

class GetListBookUseCase {
  BookRepository repository;
  GetListBookUseCase({
    required this.repository,
  });

  Future<Either<Failure, ListBook>> call() async =>
      await repository.getListBook();
}
