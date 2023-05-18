// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:tinder_app/src/common_widgets/logo_widget.dart';
import 'package:tinder_app/src/features/authentication/data/data_user_account_local.dart';
import 'package:tinder_app/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:tinder_app/src/features/likes_you/presentation/people_love_screen.dart';

class ExplorePeopleAppBarWidget extends StatelessWidget {
  final String? imagePath;

  const ExplorePeopleAppBarWidget({
    Key? key,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            UserAccountRegister.userAccountLogout();
            Navigator.pushNamedAndRemoveUntil(
                context, SignUpScreen.routeName, (route) => false);
          },
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imagePath != null
                    ? FileImage(File(imagePath!))
                    : AssetImage(
                        'assets/images/user_image.png',
                      ) as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        LogoWidget(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, PeopleLoveScreen.routeName);
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/icon_notification.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
