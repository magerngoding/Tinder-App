// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/common_widgets/banner_widget.dart';
import 'package:tinder_app/src/common_widgets/custome_button_widget.dart';
import 'package:tinder_app/src/common_widgets/custome_text_button_widget.dart';
import 'package:tinder_app/src/common_widgets/custome_text_field_widget.dart';
import 'package:tinder_app/src/features/authentication/presentation/sign_up_age_job_screen.dart';
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

  String? validationInput() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return 'Name or Email or Password can\t te empty!';
    }
    if (nameController.text.length < 4 ||
        emailController.text.length < 4 ||
        passwordController.text.length < 4) {
      return 'Too short, minumum 4 character!';
    }
    if (!emailController.text.contains('@')) {
      return 'Email not valid without @';
    }
    return null;
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
              SizedBox(
                height: AppSize.s16,
              ),
              CustomeButtonWidget(
                title: 'Get Started',
                onTap: () {
                  final message = validationInput();
                  if (message != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                    return;
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpAgeJobScreen(
                        fullname: nameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: AppSize.s20,
              ),
              CustomeTextButtonWidget(
                title: 'Sign in to My Account',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
