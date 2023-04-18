import 'package:flutter/material.dart';
import 'package:tinder_app/src/features/authentication/presentation/sign_up_screen.dart';
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
      },
    );
  }
}
