// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';
import 'match_button_widget.dart';

class ProfileDetailImageWidget extends StatelessWidget {
  const ProfileDetailImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 420,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/people_love1.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 26,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MatchButtonWidget(
                dimesion: 20,
                iconPath: 'icon_arrowleft.png',
                onTap: () {},
              ),
              Text(
                'Loved Profile\nDetails',
                style: getWhiteTextStyle(
                  fontWeight: FontWeightManager.semiBold,
                  fontSize: FontSizeManager.f20,
                ),
                textAlign: TextAlign.center,
              ),
              MatchButtonWidget(
                dimesion: 20,
                iconPath: 'icon_closecircle.png',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
