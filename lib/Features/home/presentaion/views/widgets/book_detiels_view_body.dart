import 'package:bookly/Features/home/presentaion/views/widgets/custom_book_detailes_app_bar.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/main_list_view_item.dart';
import 'package:flutter/material.dart';

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
            padding: EdgeInsets.symmetric(horizontal: width *0.20),
            child: const MainListViewItem(),
          ),
        ],
      ),
    );
  }
}

