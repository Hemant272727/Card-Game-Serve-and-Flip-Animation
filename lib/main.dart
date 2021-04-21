import 'package:flame/spritesheet.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'screens/play_table_screen.dart';

final samllCardSpriteSheet = SpriteSheet(
  imageName: 'sprint_cards_small.png',
  columns: 13,
  rows: 5,
  textureWidth: 90,
  textureHeight: 125,
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  samllCardSpriteSheet.getSprite(0, 0);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      );
    });
  }
}
