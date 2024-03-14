import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/Features/home/presentaion/manger/main_list_view_cubit/main_list_view_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainListViewBooksCubit extends Cubit<MainListViewBookStates> {
  MainListViewBooksCubit(this.homeRepo) : super(InistialState());
  final HomeRepo homeRepo;
  Future<void> getMainBooksListView() async {
    emit(LoadingState());
    var result = await homeRepo.fetchMainBookList();
    result.fold(
      (failure) {
        emit(FailureState('error'));
      },
      (books) => {
        emit(
          SuccsessState(books),
        ),
      },
    );
  }
}
