// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/common_widgets/banner_widget.dart';
import 'package:tinder_app/src/common_widgets/custome_text_field_widget.dart';
import 'package:tinder_app/src/theme_manager/values_manager.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/sign-up';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    super.dispose();
  }

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
              CustomeTextFieldWidget(
                labelName: 'Complete Name',
                hintText: 'write your name',
                controller: nameController,
              ),
              CustomeTextFieldWidget(
                labelName: 'Email Address',
                hintText: 'write your email address',
                controller: emailController,
              ),
              CustomeTextFieldWidget(
                labelName: 'Password',
                hintText: 'write your security',
                controller: passwordController,
                isObscure: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
