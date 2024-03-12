import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hoverColor: Colors.amber,
          filled: true,
          fillColor: Colors.white,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black.withOpacity(0.6),
              size: 24,
            ),
          ),
          enabledBorder: buildTextFieldInputBoarder(),
          focusedBorder: buildTextFieldInputBoarder()),
    );
  }

  OutlineInputBorder buildTextFieldInputBoarder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
