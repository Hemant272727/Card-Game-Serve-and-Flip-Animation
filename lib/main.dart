import 'dart:async';

import 'package:flame/spritesheet.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'screens/flipping_animation_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/serving_flipping_animation_screen.dart';

final samllCardSpriteSheet = SpriteSheet(
  imageName: 'sprint_cards_small.png',
  columns: 13,
  rows: 5,
  textureWidth: 90,
  textureHeight: 125,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  samllCardSpriteSheet.getSprite(1, 1);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
        SizerUtil().init(constraints, orientation);
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          // home: SizeAnimationScreen(),
          // home: RotationAnimationScreen(),
          // home: OpacityAnimationScreen(),
          // home: TranslationAnimationScreen(),
          // home: ServingAnimationScreen(),
          // home: FlippingAnimationScreen(),
          // home: ServingFlippingAnimationScreen(),
          // home: PlayTableScreen(),
          home: MenuScreen(),
        );
      });
    });
  }
}
