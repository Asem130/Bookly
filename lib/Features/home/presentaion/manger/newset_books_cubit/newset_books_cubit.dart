import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/Features/home/presentaion/manger/newset_books_cubit/newset_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksCubit extends Cubit<NewsetListViewBookStates> {
  NewsetBooksCubit(this.homeRepo) : super(NewstInistialState());
  final HomeRepo homeRepo;
  Future<void> getMainBooksListView() async {
    emit(NewstLoadingState());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
      (failure) {
        emit(NewstFailureState('error'));
      },
      (books) => {
        emit(
          NewstSuccsessState(books),
        ),
      },
    );
  }
}
