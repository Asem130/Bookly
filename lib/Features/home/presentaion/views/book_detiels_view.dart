import 'package:bookly/Features/home/presentaion/views/widgets/book_detiels_view_body.dart';
import 'package:flutter/material.dart';

class BookDetielsView extends StatelessWidget {
  const BookDetielsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetielsViewBody()),
    );
  }
}
