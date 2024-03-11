import 'package:bookly/core/widgets/custom_bottom.dart';
import 'package:flutter/material.dart';

class ActionBottom extends StatelessWidget {
  const ActionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: CustomButtom(
                backgroungColor: Colors.white,
                textColor: Colors.black,
                text: '19.99€'),
          ),
          Expanded(
            child: CustomButtom(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              backgroungColor: Color(0xffEF8262),
              textColor: Colors.white,
              text: 'Free Preview',
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
