import 'dart:async';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../utils/card_sprite_utils.dart';

class RotationAnimationScreen extends StatefulWidget {
  RotationAnimationScreen({Key key}) : super(key: key);

  @override
  _RotationAnimationScreenState createState() =>
      _RotationAnimationScreenState();
}

class _RotationAnimationScreenState extends State<RotationAnimationScreen> {
  bool rotationChange = false;
  double enableAngle = 0;
  double disableAngle = 180;
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    opacityChangeAnimation();
  }

  opacityChangeAnimation() {
    int counter = 0;
    Timer.periodic(Duration(seconds: 2), (timer) {
      counter++;
      setState(() {
        rotationChange = !rotationChange;
      });

      if (enableAngle == 0) {
        setState(() {
          enableAngle = 180;
        });
      } else {
        setState(() {
          enableAngle = 0;
        });
      }
      if (disableAngle == 180) {
        setState(() {
          disableAngle = 0;
        });
      } else {
        setState(() {
          disableAngle = 180;
        });
      }
      if (counter == 20) {
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RotationAnimatedWidget.tween(
                    enabled: rotationChange,
                    duration: const Duration(milliseconds: 1500),
                    rotationDisabled: Rotation.deg(y: enableAngle),
                    rotationEnabled: Rotation.deg(y: disableAngle),
                    curve: Curves.ease,
                    child: Container(
                      height: 20.0.w,
                      width: 14.0.w,
                      child: getSpriteImage(53),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
