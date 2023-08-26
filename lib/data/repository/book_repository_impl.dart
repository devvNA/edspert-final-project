
import 'package:dartz/dartz.dart';
import 'package:edspert_final_project/data/types.dart';


import '../../domain/failures/failure.dart';
import '../../domain/repository/book_repository.dart';
import '../datasource/book_remote_data_source.dart';

class BookRepositoryImpl extends BookRepository {
  final BookRemoteDataSource remoteDataSource;

  BookRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, ListBook>> getListBook() async =>
      await remoteDataSource.getListBook();
}
