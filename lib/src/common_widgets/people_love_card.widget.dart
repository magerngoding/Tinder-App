// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/features/likes_you/presentation/people_love_screen.dart';
import 'package:tinder_app/src/features/likes_you/presentation/people_profile_screen.dart';
import 'package:tinder_app/src/theme_manager/color_manager.dart';
import 'package:tinder_app/src/theme_manager/font_manager.dart';
import 'package:tinder_app/src/theme_manager/style_manager.dart';

class PeopleLovedCardWidget extends StatelessWidget {
  const PeopleLovedCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            PeopleProfileScreen.routeName,
          );
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 18),
          decoration: BoxDecoration(
            color: ColorManager.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/people_love3.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              'Rizky Cahya',
              style: getWhiteTextStyle(
                fontSize: 18,
                fontWeight: FontWeightManager.semiBold,
              ),
            ),
            subtitle: Text(
              '24, Doctor',
              style: getGrey60TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
