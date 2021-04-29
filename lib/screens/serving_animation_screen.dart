import 'dart:async';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../utils/card_sprite_utils.dart';

class ServingAnimationScreen extends StatefulWidget {
  ServingAnimationScreen({Key key}) : super(key: key);

  @override
  _ServingAnimationScreenState createState() => _ServingAnimationScreenState();
}

class _ServingAnimationScreenState extends State<ServingAnimationScreen> {
  bool sizeChange = false;
  List<bool> servedPages = [false, false, false];
  Timer servingTimer;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    sizeChangeAnimation();
  }

  @override
  void dispose() {
    servingTimer.cancel();
    super.dispose();
  }

  sizeChangeAnimation() {
    int counter = 0;
    servingTimer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (!mounted) return;
      setState(() {
        servedPages[counter] = true;
      });
      counter++;
      if (counter == 3) {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(right: 10.0.w),
                child: SizeAnimatedWidget.tween(
                  enabled: servedPages[0],
                  duration: const Duration(milliseconds: 1500),
                  sizeEnabled: Size(20.0.w, 20.0.w),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: TranslationAnimatedWidget.tween(
                    enabled: servedPages[0],
                    delay: const Duration(milliseconds: 500),
                    duration: const Duration(milliseconds: 1500),
                    translationEnabled: Offset(0, 30.0.w),
                    translationDisabled: Offset(-10.0, -30.0.w),
                    curve: Curves.ease,
                    child: getSpriteImage(10),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizeAnimatedWidget.tween(
                enabled: servedPages[1],
                duration: const Duration(milliseconds: 1500),
                sizeEnabled: Size(20.0.w, 20.0.w),
                sizeDisabled: Size(0, 0),
                curve: Curves.ease,
                child: TranslationAnimatedWidget.tween(
                  enabled: servedPages[1],
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 1500),
                  translationEnabled: Offset(0, 30.0.w),
                  translationDisabled: Offset(0, -30.0.w),
                  curve: Curves.ease,
                  child: getSpriteImage(41),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(left: 10.0.w),
                child: SizeAnimatedWidget.tween(
                  enabled: servedPages[2],
                  duration: const Duration(milliseconds: 1500),
                  sizeEnabled: Size(20.0.w, 20.0.w),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: TranslationAnimatedWidget.tween(
                    enabled: servedPages[2],
                    delay: const Duration(milliseconds: 500),
                    duration: const Duration(milliseconds: 1500),
                    translationEnabled: Offset(0, 30.0.w),
                    translationDisabled: Offset(-10.0.w, -30.0.w),
                    curve: Curves.ease,
                    child: getSpriteImage(17),
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
