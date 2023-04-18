// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/theme_manager/assets_image_icon_manager.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 143,
      height: 34,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            '${AssetsImageIconManager.assetPath}/logo_image.png',
          ),
        ),
      ),
    );
  }
}
