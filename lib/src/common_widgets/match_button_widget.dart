// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// Buat bikin si icon
class MatchButtonWidget extends StatelessWidget {
  final double dimesion;
  final String iconPath;
  final VoidCallback onTap;

  const MatchButtonWidget({
    Key? key,
    this.dimesion = 50,
    required this.iconPath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: dimesion,
        height: dimesion,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/$iconPath',
            ),
          ),
        ),
      ),
    );
  }
}
