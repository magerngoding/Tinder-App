// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tinder_app/src/theme_manager/style_manager.dart';

class CustomeTextButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomeTextButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: getBlack30TextStyle().copyWith(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
