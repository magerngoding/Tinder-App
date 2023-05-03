// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/common_widgets/banner_widget.dart';
import 'package:tinder_app/src/common_widgets/custome_button_widget.dart';
import 'package:tinder_app/src/common_widgets/custome_text_button_widget.dart';
import 'package:tinder_app/src/common_widgets/custome_text_field_widget.dart';
import 'package:tinder_app/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:tinder_app/src/theme_manager/values_manager.dart';

class SignUpAgeJobScreen extends StatefulWidget {
  static const String routeName = '/sign-up-age-job';
  const SignUpAgeJobScreen({super.key});

  @override
  State<SignUpAgeJobScreen> createState() => _SignUpAgeJobScreenState();
}

class _SignUpAgeJobScreenState extends State<SignUpAgeJobScreen> {
  final jobController = TextEditingController();
  final ageController = TextEditingController();

  @override
  void dispose() {
    jobController.clear();
    ageController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
          vertical: AppPadding.p50,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerWidget(),
              CustomeTextFieldWidget(
                labelName: 'Occupation',
                hintText: 'write your occupation',
                controller: jobController,
              ),
              CustomeTextFieldWidget(
                labelName: 'Age',
                hintText: '24',
                controller: ageController,
              ),
              SizedBox(
                height: 100,
              ),
              CustomeButtonWidget(
                title: 'Continue Sign Up',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    SignUpUploadPhotoScreen.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
