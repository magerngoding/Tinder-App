import 'package:flutter/material.dart';
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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          centerTitle: true,
        ),
        body: Center(child: Text('Hello World!')),
      ),
    );
  }
}
