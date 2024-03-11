import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key,
      required this.backgroungColor,
      required this.textColor,
      this.borderRadius,
      required this.text,
      this.fontSize});
  final Color backgroungColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroungColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ??
                  const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16)),
            )),
        onPressed: () {},
        child: Text(
          text,
          style:
              Styles.textStyle18.copyWith(fontSize: fontSize, color: textColor),
        ),
      ),
    );
  }
}
