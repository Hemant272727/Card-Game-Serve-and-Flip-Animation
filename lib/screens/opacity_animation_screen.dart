import 'dart:async';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../utils/card_sprite_utils.dart';

class OpacityAnimationScreen extends StatefulWidget {
  OpacityAnimationScreen({Key key}) : super(key: key);

  @override
  _OpacityAnimationScreenState createState() => _OpacityAnimationScreenState();
}

class _OpacityAnimationScreenState extends State<OpacityAnimationScreen> {
  bool opacityChange = false;
  final _audioCache = ImageCache();
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
        opacityChange = !opacityChange;
      });
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
              child: OpacityAnimatedWidget.tween(
                enabled: opacityChange,
                duration: const Duration(milliseconds: 1500),
                opacityEnabled: 1,
                opacityDisabled: 0,
                curve: Curves.ease,
                child: Container(
                  height: 20.0.w,
                  width: 20.0.w,
                  child: getSpriteImage(23),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
