// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/theme_manager/color_manager.dart';

class UploadPhotoWidget extends StatelessWidget {
  const UploadPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: ColorManager.secondary,
              width: 8,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image(
              image: AssetImage(
                'assets/images/profile_icon.png',
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          bottom: -25,
          child: SizedBox(
            width: 50,
            height: 50,
            child: Image(
              image: AssetImage('assets/images/icon_add_color.png'),
            ),
          ),
        ),
      ],
    );
  }
}
