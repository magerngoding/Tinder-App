// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinder_app/src/common_widgets/custome_button_widget.dart';
import '../../../common_widgets/people_identity_widget.dart';
import '../../../common_widgets/profile_detail_image_widget.dart';

class PeopleProfileScreen extends StatelessWidget {
  static const String routeName = '/people-profile';

  const PeopleProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileDetailImageWidget(),
            SizedBox(
              height: 30,
            ),
            PeopleIdentityWidget(),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 80,
              margin: EdgeInsets.only(
                left: 24,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    height: 80,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        image: AssetImage('assets/images/hobby3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: CustomeButtonWidget(
                title: 'Chat Now',
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
