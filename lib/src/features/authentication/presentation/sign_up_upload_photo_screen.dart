// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/common_widgets/custome_button_widget.dart';
import 'package:tinder_app/src/common_widgets/custome_text_button_widget.dart';
import 'package:tinder_app/src/common_widgets/logo_and_tagline_widget.dart';
import 'package:tinder_app/src/common_widgets/upload_photo_widget.dart';
import 'package:tinder_app/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:tinder_app/src/theme_manager/font_manager.dart';
import 'package:tinder_app/src/theme_manager/style_manager.dart';
import 'package:tinder_app/src/theme_manager/values_manager.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = '/sign-up-upload-photo';
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.p50,
          horizontal: AppPadding.p24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              LogoAndTagLineWidget(),
              SizedBox(
                height: 50,
              ),
              UploadPhotoWidget(),
              SizedBox(
                height: 53,
              ),
              Text(
                'Cahya Oktaviani',
                style: getWhiteTextStyle().copyWith(
                  fontSize: 22,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              SizedBox(
                height: AppSize.s4,
              ),
              Text(
                '22 Lawyer',
                style: getBlack60TextStyle(),
              ),
              SizedBox(
                height: 200,
              ),
              CustomeButtonWidget(
                title: 'Update My Profile',
                onTap: () {},
              ),
              SizedBox(
                height: AppSize.s12,
              ),
              CustomeTextButtonWidget(
                title: 'Skip for Now',
                onPressed: () {
                  Navigator.pushNamed(context, ExplorePeopleScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
