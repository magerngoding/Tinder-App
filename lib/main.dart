import 'package:flutter/material.dart';
import 'package:tinder_app/src/theme_manager/assets_image_icon_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                '${AssetsImageIconManager.assetPath}/hobby1.png',
              ),
              Image.asset(
                '${AssetsImageIconManager.assetPath}/hero_image.png',
              )
            ],
          ),
        ),
      ),
    );
  }
}
