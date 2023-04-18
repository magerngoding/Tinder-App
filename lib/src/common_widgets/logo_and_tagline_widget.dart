import 'package:flutter/material.dart';
import 'package:tinder_app/src/common_widgets/logo_widget.dart';
import 'package:tinder_app/src/theme_manager/style_manager.dart';
import 'package:tinder_app/src/theme_manager/values_manager.dart';

class LogoAndTagLineWidget extends StatelessWidget {
  const LogoAndTagLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoWidget(),
        SizedBox(
          height: AppSize.s6,
        ),
        Text(
          'Find yoyr perfect love.',
          style: getWhiteTextStyle(),
        ),
      ],
    );
  }
}
