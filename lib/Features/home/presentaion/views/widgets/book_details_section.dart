import 'package:bookly/Features/home/presentaion/views/widgets/action_buttom.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/main_list_view_item.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/rating_book.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class BookDetailesSection extends StatelessWidget {
  const BookDetailesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.20),
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
    );
  }
}
