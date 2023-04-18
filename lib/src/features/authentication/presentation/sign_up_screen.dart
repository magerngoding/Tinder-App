// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/common_widgets/banner_widget.dart';
import 'package:tinder_app/src/theme_manager/values_manager.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign-up';
  const SignUpScreen({super.key});

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
              BannerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
