import 'package:bookly/Features/home/data/models/book_model/book_model.dart';

abstract class NewsetListViewBookStates {}

final class NewstInistialState extends NewsetListViewBookStates {}

final class NewstLoadingState extends NewsetListViewBookStates {}

final class NewstSuccsessState extends NewsetListViewBookStates {
  final List<BookModel> books;

  NewstSuccsessState(this.books);
}

final class NewstFailureState extends NewsetListViewBookStates {
  final String errorMessage;

  NewstFailureState(this.errorMessage);
}
