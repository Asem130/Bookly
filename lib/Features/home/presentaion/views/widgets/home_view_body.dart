import 'package:bookly/Features/home/presentaion/views/widgets/app_bar.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/main_list_view.dart';
import 'package:bookly/core/utils/styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        MainListView(),
        SizedBox(
          height: 50,
        ),
        Text('Best Seller', style: Styles.textStyle18),
      ],
    );
  }
}
