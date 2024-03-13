import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementaion implements HomeRepo {  @override
  Future<Either<ServerFailure, BookModel>> fetchBestSellerList() {
    
    throw UnimplementedError();
  }

  @override
  Future<Either<ServerFailure, BookModel>> fetchMainBookList() {
    
    throw UnimplementedError();
  }
}
