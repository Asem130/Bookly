import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementaion implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementaion({required this.apiService});
  @override
  Future<Either<ServerFailure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newset');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure('error'));
    }
  }

  @override
  Future<Either<ServerFailure, List<BookModel>>> fetchMainBookList() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure('error'));
    }
  }
}
