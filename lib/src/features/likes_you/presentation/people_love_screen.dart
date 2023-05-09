import 'package:flutter/material.dart';
import 'package:tinder_app/src/common_widgets/people_love_card.widget.dart';
import 'package:tinder_app/src/theme_manager/font_manager.dart';
import 'package:tinder_app/src/theme_manager/style_manager.dart';

class PeopleLoveScreen extends StatelessWidget {
  static const String routeName = '/people-love';
  const PeopleLoveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'People You\nLoved',
          style: getWhiteTextStyle(
            fontWeight: FontWeightManager.semiBold,
            fontSize: FontSizeManager.f20,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return PeopleLovedCardWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
