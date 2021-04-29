import 'dart:async';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../utils/card_sprite_utils.dart';

class FlippingAnimationScreen extends StatefulWidget {
  FlippingAnimationScreen({Key key}) : super(key: key);

  @override
  _FlippingAnimationScreenState createState() =>
      _FlippingAnimationScreenState();
}

class _FlippingAnimationScreenState extends State<FlippingAnimationScreen> {
  bool flippingChange = false;
  Timer flippingTimer;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    flippingChangeAnimation();
  }

  @override
  void dispose() {
    flippingTimer.cancel();
    super.dispose();
  }

  flippingChangeAnimation() {
    flippingTimer = Timer(Duration(seconds: 3), () {
      if (!mounted) return;
      setState(() {
        flippingChange = !flippingChange;
      });
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
              child: RotationAnimatedWidget.tween(
                enabled: flippingChange,
                duration: const Duration(milliseconds: 1000),
                rotationDisabled: Rotation.deg(y: 180),
                rotationEnabled: Rotation.deg(y: 0),
                curve: Curves.ease,
                child: OpacityAnimatedWidget.tween(
                  enabled: flippingChange,
                  duration: const Duration(milliseconds: 1000),
                  opacityEnabled: 1,
                  opacityDisabled: 0,
                  curve: Curves.ease,
                  child: Container(
                    height: 20.0.w,
                    width: 14.0.w,
                    child: getSpriteImage(10),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: RotationAnimatedWidget.tween(
                enabled: flippingChange,
                duration: const Duration(milliseconds: 1000),
                rotationDisabled: Rotation.deg(y: 0),
                rotationEnabled: Rotation.deg(y: 180),
                curve: Curves.ease,
                child: OpacityAnimatedWidget.tween(
                  enabled: flippingChange,
                  duration: const Duration(milliseconds: 1000),
                  opacityEnabled: 0,
                  opacityDisabled: 1,
                  curve: Curves.ease,
                  child: Container(
                    height: 20.0.w,
                    width: 14.0.w,
                    child: getSpriteImage(53),
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
