// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tinder_app/src/theme_manager/color_manager.dart';
import 'package:tinder_app/src/theme_manager/style_manager.dart';
import 'package:tinder_app/src/theme_manager/values_manager.dart';

class CustomeTextFieldWidget extends StatelessWidget {
  final String labelName;
  final String hintText;
  final bool isObscure;
  final TextEditingController controller;

  CustomeTextFieldWidget({
    Key? key,
    required this.labelName,
    required this.hintText,
    this.isObscure = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: getWhiteTextStyle(),
        ),
        SizedBox(
          height: AppSize.s8,
        ),
        TextField(
          controller: controller,
          obscureText: isObscure,
          style: getWhiteTextStyle(),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            filled: true,
            fillColor: ColorManager.secondary,
            hintText: hintText,
            hintStyle: getBlack30TextStyle(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
