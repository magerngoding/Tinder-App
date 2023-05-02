// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tinder_app/src/theme_manager/color_manager.dart';
import 'package:tinder_app/src/theme_manager/font_manager.dart';
import 'package:tinder_app/src/theme_manager/style_manager.dart';

class CustomeButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  CustomeButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: [
              ColorManager.pink,
              ColorManager.purple,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          title,
          style: getWhiteTextStyle(
            fontWeight: FontWeightManager.semiBold,
          ),
        ),
      ),
    );
  }
}
