// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:tinder_app/src/features/authentication/presentation/sign_up_age_job_screen.dart';
import 'package:tinder_app/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:tinder_app/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:tinder_app/src/features/likes_you/presentation/people_love_screen.dart';
import 'package:tinder_app/src/features/likes_you/presentation/people_profile_screen.dart';
import 'package:tinder_app/src/theme_manager/theme_data.manager.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: getApplicationThemeData(),
      initialRoute: SignUpScreen.routeName,
      routes: {
        SignUpScreen.routeName: (context) => SignUpScreen(),
        SignUpAgeJobScreen.routeName: (context) => SignUpAgeJobScreen(),
        SignUpUploadPhotoScreen.routeName: (context) =>
            SignUpUploadPhotoScreen(),
        ExplorePeopleScreen.routeName: (context) => ExplorePeopleScreen(),
        PeopleLoveScreen.routeName: (context) => PeopleLoveScreen(),
        PeopleProfileScreen.routeName: (context) => PeopleProfileScreen(),
      },
    );
  }
}
