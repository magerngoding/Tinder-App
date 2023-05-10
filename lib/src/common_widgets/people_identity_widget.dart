import 'package:flutter/material.dart';

import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';

class PeopleIdentityWidget extends StatelessWidget {
  const PeopleIdentityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cahya Oktaviani',
            style: getWhiteTextStyle(
              fontSize: 25,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
          Text(
            '22, Lawyer',
            style: getBlackTextStyle(),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'What Does Lorem Ipsum Mean? Lorem ipsum, in graphical and textual context, refers to filler text that is placed in a document or visual presentation.',
            style: getWhiteTextStyle(),
          ),
        ],
      ),
    );
  }
}
