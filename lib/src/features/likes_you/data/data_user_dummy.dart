import 'package:tinder_app/src/features/likes_you/domain/user.dart';
import 'package:tinder_app/src/theme_manager/assets_image_icon_manager.dart';

List<User> dataUserDummy = [
  User(
    fullname: 'Yunita',
    age: 22,
    occupation: 'Teacher',
    description: 'Great teacher',
    imagePath: '${AssetsImageIconManager.assetPath}/people_love1.png',
  ),
  User(
    fullname: 'Rimadhona',
    age: 24,
    occupation: 'Doctor',
    description: 'Great doctor',
    imagePath: '${AssetsImageIconManager.assetPath}/people_love2.png',
  ),
  User(
    fullname: 'Anindha',
    age: 22,
    occupation: 'Enterpreneur',
    description: 'Great enterpreneur',
    imagePath: '${AssetsImageIconManager.assetPath}/people_love3.png',
  ),
];
