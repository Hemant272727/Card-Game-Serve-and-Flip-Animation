import 'dart:async';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../utils/card_sprite_utils.dart';

class ServingFlippingAnimationScreen extends StatefulWidget {
  ServingFlippingAnimationScreen({Key key}) : super(key: key);

  @override
  _ServingFlippingAnimationScreenState createState() =>
      _ServingFlippingAnimationScreenState();
}

class _ServingFlippingAnimationScreenState
    extends State<ServingFlippingAnimationScreen> {
  bool sizeChange = false;
  List<bool> servedPages = [false, false, false];
  List<bool> flipPages = [false, false, false];
  Timer servingTimer;
  Timer flipingTimer;

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
    flipingTimer.cancel();
    super.dispose();
  }

  sizeChangeAnimation() {
    int serveCounter = 0;
    int flipCounter = 0;
    servingTimer = Timer.periodic(Duration(seconds: 2), (serveTimer) {
      if (!mounted) return;
      setState(() {
        servedPages[serveCounter] = true;
      });
      serveCounter++;
      if (serveCounter == 3) {
        serveTimer.cancel();
        servingTimer.cancel();
        flipingTimer = Timer.periodic(Duration(seconds: 2), (flipTimer) {
          if (!mounted) return;
          setState(() {
            flipPages[flipCounter] = true;
          });
          flipCounter++;
          if (flipCounter == 3) {
            flipTimer.cancel();
            flipingTimer.cancel();
          }
        });
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
                child: RotationAnimatedWidget.tween(
                  enabled: flipPages[2],
                  duration: const Duration(milliseconds: 1000),
                  rotationDisabled: Rotation.deg(y: 180),
                  rotationEnabled: Rotation.deg(y: 0),
                  curve: Curves.ease,
                  child: OpacityAnimatedWidget.tween(
                    enabled: flipPages[2],
                    duration: const Duration(milliseconds: 1000),
                    opacityEnabled: 0,
                    opacityDisabled: 1,
                    curve: Curves.ease,
                    child: SizeAnimatedWidget.tween(
                      enabled: servedPages[0],
                      duration: const Duration(milliseconds: 1500),
                      sizeEnabled: Size(14.0.w, 20.0.w),
                      sizeDisabled: Size(0, 0),
                      curve: Curves.ease,
                      child: TranslationAnimatedWidget.tween(
                        enabled: servedPages[0],
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 1500),
                        translationEnabled: Offset(0, 30.0.w),
                        translationDisabled: Offset(-10.0, -30.0.w),
                        curve: Curves.ease,
                        child: getSpriteImage(53),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(right: 10.0.w),
                child: RotationAnimatedWidget.tween(
                  enabled: flipPages[2],
                  duration: const Duration(milliseconds: 1000),
                  rotationDisabled: Rotation.deg(y: 180),
                  rotationEnabled: Rotation.deg(y: 0),
                  curve: Curves.ease,
                  child: OpacityAnimatedWidget.tween(
                    enabled: flipPages[2],
                    duration: const Duration(milliseconds: 1000),
                    opacityEnabled: 1,
                    opacityDisabled: 0,
                    curve: Curves.ease,
                    child: SizeAnimatedWidget.tween(
                      enabled: servedPages[0],
                      duration: const Duration(milliseconds: 1500),
                      sizeEnabled: Size(14.0.w, 20.0.w),
                      sizeDisabled: Size(0, 0),
                      curve: Curves.ease,
                      child: TranslationAnimatedWidget.tween(
                        enabled: servedPages[0],
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 1500),
                        translationEnabled: Offset(0, 30.0.w),
                        translationDisabled: Offset(-10.0, -30.0.w),
                        curve: Curves.ease,
                        child: getSpriteImage(52),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: RotationAnimatedWidget.tween(
                enabled: flipPages[1],
                duration: const Duration(milliseconds: 1000),
                rotationDisabled: Rotation.deg(y: 180),
                rotationEnabled: Rotation.deg(y: 0),
                curve: Curves.ease,
                child: OpacityAnimatedWidget.tween(
                  enabled: flipPages[1],
                  duration: const Duration(milliseconds: 1000),
                  opacityEnabled: 0,
                  opacityDisabled: 1,
                  curve: Curves.ease,
                  child: SizeAnimatedWidget.tween(
                    enabled: servedPages[1],
                    duration: const Duration(milliseconds: 1500),
                    sizeEnabled: Size(14.0.w, 20.0.w),
                    sizeDisabled: Size(0, 0),
                    curve: Curves.ease,
                    child: TranslationAnimatedWidget.tween(
                      enabled: servedPages[1],
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 1500),
                      translationEnabled: Offset(0, 30.0.w),
                      translationDisabled: Offset(0, -30.0.w),
                      curve: Curves.ease,
                      child: getSpriteImage(53),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: RotationAnimatedWidget.tween(
                enabled: flipPages[1],
                duration: const Duration(milliseconds: 1000),
                rotationDisabled: Rotation.deg(y: 180),
                rotationEnabled: Rotation.deg(y: 0),
                curve: Curves.ease,
                child: OpacityAnimatedWidget.tween(
                  enabled: flipPages[1],
                  duration: const Duration(milliseconds: 1000),
                  opacityEnabled: 1,
                  opacityDisabled: 0,
                  curve: Curves.ease,
                  child: SizeAnimatedWidget.tween(
                    enabled: servedPages[1],
                    duration: const Duration(milliseconds: 1500),
                    sizeEnabled: Size(14.0.w, 20.0.w),
                    sizeDisabled: Size(0, 0),
                    curve: Curves.ease,
                    child: TranslationAnimatedWidget.tween(
                      enabled: servedPages[1],
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 1500),
                      translationEnabled: Offset(0, 30.0.w),
                      translationDisabled: Offset(0, -30.0.w),
                      curve: Curves.ease,
                      child: getSpriteImage(15),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(left: 10.0.w),
                child: RotationAnimatedWidget.tween(
                  enabled: flipPages[0],
                  duration: const Duration(milliseconds: 1000),
                  rotationDisabled: Rotation.deg(y: 180),
                  rotationEnabled: Rotation.deg(y: 0),
                  curve: Curves.ease,
                  child: OpacityAnimatedWidget.tween(
                    enabled: flipPages[0],
                    duration: const Duration(milliseconds: 1000),
                    opacityEnabled: 0,
                    opacityDisabled: 1,
                    curve: Curves.ease,
                    child: SizeAnimatedWidget.tween(
                      enabled: servedPages[2],
                      duration: const Duration(milliseconds: 1500),
                      sizeEnabled: Size(14.0.w, 20.0.w),
                      sizeDisabled: Size(0, 0),
                      curve: Curves.ease,
                      child: TranslationAnimatedWidget.tween(
                        enabled: servedPages[2],
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 1500),
                        translationEnabled: Offset(0, 30.0.w),
                        translationDisabled: Offset(-10.0.w, -30.0.w),
                        curve: Curves.ease,
                        child: getSpriteImage(53),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(left: 10.0.w),
                child: RotationAnimatedWidget.tween(
                  enabled: flipPages[0],
                  duration: const Duration(milliseconds: 1000),
                  rotationDisabled: Rotation.deg(y: 180),
                  rotationEnabled: Rotation.deg(y: 0),
                  curve: Curves.ease,
                  child: OpacityAnimatedWidget.tween(
                    enabled: flipPages[0],
                    duration: const Duration(milliseconds: 1000),
                    opacityEnabled: 1,
                    opacityDisabled: 0,
                    curve: Curves.ease,
                    child: SizeAnimatedWidget.tween(
                      enabled: servedPages[2],
                      duration: const Duration(milliseconds: 1500),
                      sizeEnabled: Size(14.0.w, 20.0.w),
                      sizeDisabled: Size(0, 0),
                      curve: Curves.ease,
                      child: TranslationAnimatedWidget.tween(
                        enabled: servedPages[2],
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 1500),
                        translationEnabled: Offset(0, 30.0.w),
                        translationDisabled: Offset(-10.0.w, -30.0.w),
                        curve: Curves.ease,
                        child: getSpriteImage(29),
                      ),
                    ),
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
