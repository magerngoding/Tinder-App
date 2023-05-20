// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../features/likes_you/domain/user.dart';
import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';

class GlassCardWidget extends StatelessWidget {
  final User user;

  const GlassCardWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 24,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 26,
        horizontal: 30,
      ),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33),
        image: DecorationImage(
          image: AssetImage(
            'assets/images/glass_card.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.fullname,
                style: getWhiteTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              Text(
                '${user.age}, ${user.occupation}',
                style: getWhiteTextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/icon_profile.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
