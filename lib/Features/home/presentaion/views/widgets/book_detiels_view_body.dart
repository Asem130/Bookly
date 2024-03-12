import 'package:bookly/Features/home/presentaion/views/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/custom_book_detailes_app_bar.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/semller_list_view_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetielsViewBody extends StatelessWidget {
  const BookDetielsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailesViewAppBar(),
          SizedBox(
            height: 24,
          ),
          BookDetailesSection(),
          Expanded(
            child: SizedBox(
              height: 50,
            ),
          ),
          SemllerBooksSection(),
        ],
      ),
    );
  }
}
