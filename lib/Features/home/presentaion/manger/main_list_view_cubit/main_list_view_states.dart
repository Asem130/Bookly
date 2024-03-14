import 'package:bookly/Features/home/data/models/book_model/book_model.dart';

abstract class MainListViewBookStates {}

final class InistialState extends MainListViewBookStates {}

final class LoadingState extends MainListViewBookStates {}

final class SuccsessState extends MainListViewBookStates {
  final List<BookModel> books;

  SuccsessState(this.books);
}

final class FailureState extends MainListViewBookStates {
  final String errorMessage;

  FailureState(this.errorMessage);
}
