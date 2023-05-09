// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/common_widgets/explore_people_app_bar_widget.dart';
import 'package:tinder_app/src/common_widgets/explore_people_button_widget.dart';
import 'package:tinder_app/src/common_widgets/match_card_widget.dart';
import 'package:tinder_app/src/theme_manager/values_manager.dart';

class ExplorePeopleScreen extends StatelessWidget {
  static const String routeName = '/explore-people';

  const ExplorePeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.p40,
          horizontal: AppPadding.p24,
        ),
        child: Column(
          children: [
            ExplorePeopleAppBarWidget(),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: MatchCardWidget(),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ExplorePeopleButtonWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
