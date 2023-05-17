// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:tinder_app/src/common_widgets/banner_widget.dart';
import 'package:tinder_app/src/common_widgets/custome_button_widget.dart';
import 'package:tinder_app/src/common_widgets/custome_text_field_widget.dart';
import 'package:tinder_app/src/features/authentication/domainn/user_account.dart';
import 'package:tinder_app/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:tinder_app/src/theme_manager/values_manager.dart';

class SignUpAgeJobScreen extends StatefulWidget {
  static const String routeName = '/sign-up-age-job';

  final String fullname;
  final String email;
  final String password;

  const SignUpAgeJobScreen({
    Key? key,
    required this.fullname,
    required this.email,
    required this.password,
  }) : super(key: key);

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

  String? validationInput() {
    if (jobController.text.isEmpty || ageController.text.isEmpty) {
      return 'Occupation or Age can\t te empty!';
    }

    return null;
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
                  final message = validationInput();
                  if (message != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                    return;
                  }
                  UserAccount userAccount = UserAccount(
                    fullname: widget.fullname,
                    email: widget.email,
                    password: widget.password,
                    occupation: jobController.text,
                    age: ageController.text,
                  );
                  Navigator.pushNamed(
                    context,
                    SignUpUploadPhotoScreen.routeName,
                    arguments: userAccount,
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
