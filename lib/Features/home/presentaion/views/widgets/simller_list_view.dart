import 'package:bookly/Features/home/presentaion/views/widgets/main_list_view_item.dart';
import 'package:flutter/material.dart';

class SimllerListView extends StatelessWidget {
  const SimllerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: MainListViewItem(imageUrl: 'https://www.facebook.com/photo/?fbid=1823615934725992&set=a.122930848127851',
                borderRadius: BorderRadius.circular(8),
              ),
            )),
      ),
    );
  }
}
