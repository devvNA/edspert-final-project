import 'package:dartz/dartz.dart';

import '../../data/types.dart';
import '../failures/failure.dart';
import '../repository/Book_repository.dart';

class BookUseCase {
  BookUseCase({
    required this.repository,
  });

  BookRepository repository;

  Future<Either<Failure, ListBook>> getListBook() async {
    return await repository.getListBook();
  }
}
