import 'dart:async';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

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
    int counter = 0;
    Timer.periodic(Duration(seconds: 2), (timer) {
      counter++;
      setState(() {
        sizeChange = !sizeChange;
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
              child: SizeAnimatedWidget.tween(
                enabled: sizeChange,
                duration: const Duration(milliseconds: 1500),
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
          ],
        ),
      ),
    );
  }
}
