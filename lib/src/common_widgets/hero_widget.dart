// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/theme_manager/assets_image_icon_manager.dart';
import 'package:tinder_app/src/theme_manager/values_manager.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 215,
      margin: EdgeInsets.symmetric(
        vertical: AppMargin.m30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppSize.s18,
        ),
        image: DecorationImage(
          image: AssetImage(
            '${AssetsImageIconManager.assetPath}/hero_image.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
