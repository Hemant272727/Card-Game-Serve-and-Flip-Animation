import 'dart:async';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../constants/image_constants.dart';
import '../main.dart';
import '../utils/card_sprite_utils.dart';

class SizeAnimationScreen extends StatefulWidget {
  SizeAnimationScreen({Key key}) : super(key: key);

  @override
  _SizeAnimationScreenState createState() => _SizeAnimationScreenState();
}

class _SizeAnimationScreenState extends State<SizeAnimationScreen> {
  bool sizeChange = false;
  final _audioCache = ImageCache();
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    sizeChangeAnimation();
  }

  sizeChangeAnimation() {
    samllCardSpriteSheet.getSprite(0, 0);
    Timer(Duration(seconds: 3), () {
      setState(() {
        sizeChange = !sizeChange;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.0.w,
        width: 100.0.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConst.bgHome),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.amber,
                alignment: Alignment.center,
                width: 80.0.w,
                height: 80.0.w,
                child: SizeAnimatedWidget.tween(
                  enabled: sizeChange,
                  duration: const Duration(milliseconds: 200),
                  sizeEnabled: Size(20.0.w, 20.0.w),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: Container(
                    height: 20.0.w,
                    width: 20.0.w,
                    child: getSpriteImage(32),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
