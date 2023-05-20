// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';

import 'package:tinder_app/src/common_widgets/match_button_widget.dart';

class ExplorePeopleButtonWidget extends StatelessWidget {
  final AppinioSwiperController controller;
  const ExplorePeopleButtonWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MatchButtonWidget(
          iconPath: 'icon_close.png',
          onTap: () {
            controller.swipeLeft();
          },
        ),
        MatchButtonWidget(
          dimesion: 80,
          iconPath: 'icon_love.png',
          onTap: () {},
        ),
        MatchButtonWidget(
          iconPath: 'icon_favorite.png',
          onTap: () {
            controller.swipeRight();
          },
        ),
      ],
    );
  }
}
