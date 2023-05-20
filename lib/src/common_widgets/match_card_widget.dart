// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:tinder_app/src/theme_manager/color_manager.dart';

import '../features/likes_you/domain/user.dart';
import 'glass_card_widget.dart';

class MatchCardWidget extends StatelessWidget {
  final User user;

  const MatchCardWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                user.imagePath,
              ),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              width: 10,
              color: ColorManager.secondary,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            borderRadius: BorderRadius.circular(70),
          ),
        ),
        GlassCardWidget(
          user: user,
        ),
      ],
    );
  }
}
