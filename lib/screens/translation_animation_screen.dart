import 'dart:async';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../utils/card_sprite_utils.dart';

class TranslationAnimationScreen extends StatefulWidget {
  TranslationAnimationScreen({Key key}) : super(key: key);

  @override
  _TranslationAnimationScreenState createState() =>
      _TranslationAnimationScreenState();
}

class _TranslationAnimationScreenState
    extends State<TranslationAnimationScreen> {
  bool sizeChange = false;

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
              child: TranslationAnimatedWidget.tween(
                enabled: sizeChange,
                duration: const Duration(milliseconds: 1500),
                translationEnabled: Offset(20.0.w, 0),
                translationDisabled: Offset(-20.0.w, 0),
                curve: Curves.ease,
                child: Container(
                  height: 20.0.w,
                  width: 20.0.w,
                  child: getSpriteImage(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
