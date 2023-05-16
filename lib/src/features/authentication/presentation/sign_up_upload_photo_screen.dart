// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tinder_app/src/common_widgets/custome_button_widget.dart';
import 'package:tinder_app/src/common_widgets/custome_text_button_widget.dart';
import 'package:tinder_app/src/common_widgets/logo_and_tagline_widget.dart';
import 'package:tinder_app/src/common_widgets/upload_photo_widget.dart';
import 'package:tinder_app/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:tinder_app/src/theme_manager/font_manager.dart';
import 'package:tinder_app/src/theme_manager/style_manager.dart';
import 'package:tinder_app/src/theme_manager/values_manager.dart';
import 'package:tinder_app/src/util/image_picker_util.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = '/sign-up-upload-photo';
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
  File? image;

  void getImageProfile(GetImageFrom source) async {
    final result = await ImagePickerUtil.getImage(source);
    if (result != null) {
      setState(
        () {
          image = File(result.path);
        },
      );
    }
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
              LogoAndTagLineWidget(),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  // Pake ini agar bisa nampilin halaman lain atau pop up row
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: EdgeInsets.all(24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {
                                getImageProfile(GetImageFrom.camera);
                              },
                              icon: Icon(
                                Icons.camera_alt_sharp,
                                size: 50,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                getImageProfile(GetImageFrom.gallery);
                              },
                              icon: Icon(
                                Icons.photo,
                                size: 50,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: UploadPhotoWidget(
                  image: image,
                ),
              ),
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
