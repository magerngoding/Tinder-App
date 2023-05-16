// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:tinder_app/src/theme_manager/color_manager.dart';

class UploadPhotoWidget extends StatelessWidget {
  final File? image;

  const UploadPhotoWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

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
            child: image != null
                ? Image(
                    image: FileImage(image!),
                    fit: BoxFit.cover,
                  )
                : Image(
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
