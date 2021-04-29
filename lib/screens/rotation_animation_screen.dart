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
  Timer rotationTimer;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    opacityChangeAnimation();
  }

  @override
  void dispose() {
    rotationTimer.cancel();
    super.dispose();
  }

  opacityChangeAnimation() {
    int counter = 0;
    rotationTimer = Timer.periodic(Duration(seconds: 2), (timer) {
      counter++;
      if (!mounted) return;
      setState(() {
        rotationChange = !rotationChange;
      });

      if (enableAngle == 0) {
        if (!mounted) return;
        setState(() {
          enableAngle = 180;
        });
      } else {
        if (!mounted) return;
        setState(() {
          enableAngle = 0;
        });
      }
      if (disableAngle == 180) {
        if (!mounted) return;
        setState(() {
          disableAngle = 0;
        });
      } else {
        if (!mounted) return;
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
