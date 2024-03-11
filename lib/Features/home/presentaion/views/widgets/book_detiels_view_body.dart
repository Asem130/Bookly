import 'package:bookly/Features/home/presentaion/views/widgets/action_buttom.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/custom_book_detailes_app_bar.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/main_list_view_item.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/rating_book.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetielsViewBody extends StatelessWidget {
  const BookDetielsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailesViewAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.16),
            child: const MainListViewItem(),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle27,
          ),
          const SizedBox(
            height: 8,
          ),
          Opacity(
              opacity: 0.7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
              )),
          const SizedBox(
            height: 16,
          ),
          const RatingBook(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 40,
          ),
          const ActionBottom(),
        ],
      ),
    );
  }
}
