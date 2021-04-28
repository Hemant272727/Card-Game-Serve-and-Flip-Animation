import 'dart:async';

import 'package:flame/flame.dart';
import 'package:flame/spritesheet.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'screens/play_table_screen.dart';
import 'screens/size_animation_screen.dart';

final samllCardSpriteSheet = SpriteSheet(
  imageName: 'sprint_cards_small.png',
  columns: 13,
  rows: 5,
  textureWidth: 90,
  textureHeight: 125,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  samllCardSpriteSheet.getSprite(2, 10);
  Timer(Duration(seconds: 1), () {
    runApp(MyApp());
  });
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
          // home: PlayTableScreen(),
          home: SizeAnimationScreen(),
        );
      });
    });
  }
}
