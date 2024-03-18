import 'package:bookly/Features/home/presentaion/manger/main_list_view_cubit/main_list_view_cubit.dart';
import 'package:bookly/Features/home/presentaion/manger/main_list_view_cubit/main_list_view_states.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/main_list_view_item.dart';
import 'package:bookly/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainListView extends StatelessWidget {
  const MainListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainListViewBooksCubit, MainListViewBookStates>(
        builder: (context, state) {
      if (state is LoadingState) {
        return const CustomLoadingIndicator();
      } else if (state is SuccsessState) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) =>  Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: MainListViewItem(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail!,),
                )),
          ),
        );
      } else if (state is FailureState){
        return  Text(state.errorMessage);
      }
      else {return  const Text('aa');}
    });
  }
}
