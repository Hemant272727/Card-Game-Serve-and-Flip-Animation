import 'package:animated_widgets/animated_widgets.dart';
import 'package:flame/widgets/sprite_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/image_constants.dart';
import '../main.dart';

class PlayTableWidget extends StatelessWidget {
  final List<bool> servedPages;
  final List<bool> flipedPages;

  const PlayTableWidget({
    @required this.servedPages,
    @required this.flipedPages,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      right: 0.0,
      top: 10.66.w,
      child: Column(
        children: [
          Container(
            width: 85.0.h,
            height: 75.0.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConst.ic3PattiTable),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 0.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 2.0.w),
                        child: Image.asset(
                          ImageConst.icProfilePic1,
                          height: 8.3.h,
                          width: 8.3.h,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5.0.h, left: 2.0.h),
                        child: Stack(
                          children: [
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[0],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h, 6.67.h + 0.29.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[0],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(23.26.h, 0),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 200),
                                child: Container(
                                  padding: EdgeInsets.only(top: 0.29.h),
                                  height: 8.3.h + 0.29.h,
                                  width: 8.3.h,
                                  child: RotationTransition(
                                    turns:
                                        const AlwaysStoppedAnimation(350 / 360),
                                    child: getSpriteImage(3),
                                  ),
                                ),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[1],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h + 2.0.h, 6.67.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[1],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(23.26.h, 0),
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.ease,
                                child: Container(
                                    padding: EdgeInsets.only(
                                      left: 2.0.h,
                                      top: 0.5.h,
                                    ),
                                    height: 8.3.h + 0.5.h,
                                    width: 8.3.h + 2.0.h,
                                    child: getSpriteImage(11)),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[2],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h + 2.0.h + 2.0.h,
                                  6.67.h + 0.5.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[2],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(23.26.h, 0),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 2.0.h + 2.0.h,
                                    top: 0.5.h + 0.5.h,
                                  ),
                                  height: 8.3.h + 0.5.h + 0.5.h,
                                  width: 8.3.h + 2.0.h + 2.0.h,
                                  child: RotationTransition(
                                      turns: const AlwaysStoppedAnimation(
                                          10 / 360),
                                      child: getSpriteImage(27)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 2.0.h),
                        child: Image.asset(
                          ImageConst.icProfilePic3,
                          height: 8.3.h,
                          width: 8.3.h,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 5.0.h, left: 2.0.h),
                        child: Stack(
                          children: [
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[3],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h, 6.67.h + 0.29.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[3],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled:
                                    Offset(23.26.h, -(33.33.h)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    bottom: 0.29.h,
                                  ),
                                  height: 8.3.h + 0.29.h,
                                  width: 8.3.h,
                                  child: RotationTransition(
                                      turns: const AlwaysStoppedAnimation(
                                          350 / 360),
                                      child: getSpriteImage(39)),
                                ),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[4],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h + 2.0.h, 6.67.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[4],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled:
                                    Offset(23.26.h, -(33.33.h)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                    padding: EdgeInsets.only(
                                      left: 2.0.h,
                                      top: 0.29.h,
                                    ),
                                    height: 8.3.h + 0.5.h,
                                    width: 8.3.h + 2.0.h,
                                    child: getSpriteImage(43)),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[5],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h + 2.0.h + 2.0.h,
                                  6.67.h + 0.5.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[5],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled:
                                    Offset(23.26.h, -(33.33.h)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 2.0.h + 2.0.h,
                                    top: 0.5.h + 0.5.h,
                                  ),
                                  height: 8.3.h + 0.5.h + 0.5.h,
                                  width: 8.3.h + 2.0.h + 2.0.h,
                                  child: RotationTransition(
                                      turns: const AlwaysStoppedAnimation(
                                          10 / 360),
                                      child: getSpriteImage(44)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0.0,
                  left: 0.0,
                  bottom: -(12.5.w),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 13.14.w),
                        child: Stack(
                          children: [
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[6],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(8.3.h, 8.3.h + 0.29.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[6],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(0, -(50.0.w)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    bottom: 0.29.h,
                                    left: 2.0.h,
                                  ),
                                  height: 8.3.h + 0.29.h,
                                  // width: 6.67.h,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(350 / 360),
                                    child: OpacityAnimatedWidget.tween(
                                      opacityEnabled: 1, //define start value
                                      opacityDisabled: 0, //and end value
                                      enabled: flipedPages[
                                          0], //bind with the boolean
                                      child: RotationAnimatedWidget.tween(
                                        enabled: flipedPages[0],
                                        rotationDisabled: Rotation.deg(y: 180),
                                        rotationEnabled: Rotation.deg(y: 0),
                                        child: getSpriteImage(52),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[6],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(8.3.h, 8.3.h + 0.29.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[6],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(0, -(50.0.w)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    bottom: 0.29.h,
                                    left: 2.0.h,
                                  ),
                                  height: 8.3.h + 0.29.h,
                                  // width: 6.67.h,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(350 / 360),
                                    child: OpacityAnimatedWidget.tween(
                                      opacityEnabled: 0, //define start value
                                      opacityDisabled: 1, //and end value
                                      enabled: flipedPages[
                                          0], //bind with the boolean
                                      child: RotationAnimatedWidget.tween(
                                        enabled: flipedPages[0],
                                        rotationDisabled: Rotation.deg(y: 180),
                                        rotationEnabled: Rotation.deg(y: 0),
                                        child: getSpriteImage(53),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[7],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(8.3.h + 2.0.h, 8.3.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[7],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(0, -(50.0.w)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 2.0.h + 2.0.h,
                                    top: 0.29.h,
                                  ),
                                  height: 8.3.h + 0.5.h,
                                  // width: 6.67.h + 2.0.h,
                                  child: OpacityAnimatedWidget.tween(
                                    opacityEnabled: 1, //define start value
                                    opacityDisabled: 0, //and end value
                                    enabled:
                                        flipedPages[1], //bind with the boolean
                                    child: RotationAnimatedWidget.tween(
                                      enabled: flipedPages[1],
                                      rotationDisabled: Rotation.deg(y: 180),
                                      rotationEnabled: Rotation.deg(y: 0),
                                      child: getSpriteImage(42),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[7],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(8.3.h + 2.0.h, 8.3.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[7],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(0, -(50.0.w)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 2.0.h + 2.0.h,
                                    top: 0.29.h,
                                  ),
                                  height: 8.3.h + 0.5.h,
                                  // width: 6.67.h + 2.0.h,
                                  child: OpacityAnimatedWidget.tween(
                                    opacityEnabled: 0, //define start value
                                    opacityDisabled: 1, //and end value
                                    enabled:
                                        flipedPages[1], //bind with the boolean
                                    child: RotationAnimatedWidget.tween(
                                      enabled: flipedPages[1],
                                      rotationDisabled: Rotation.deg(y: 180),
                                      rotationEnabled: Rotation.deg(y: 0),
                                      child: getSpriteImage(53),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[8],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(
                                  8.3.h + 2.0.h + 2.0.h, 8.3.h + 0.5.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[8],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(0, -(50.0.w)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 200),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 2.0.h + 2.0.h + 2.0.h,
                                    top: 0.5.h + 0.5.h,
                                  ),
                                  height: 8.3.h + 0.5.h + 0.5.h,
                                  // width: 6.67.h +
                                  //     2.0.h +
                                  //     2.0.h,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(10 / 360),
                                    child: RotationAnimatedWidget.tween(
                                      enabled: flipedPages[2],
                                      rotationDisabled: Rotation.deg(y: 0),
                                      rotationEnabled: Rotation.deg(y: 180),
                                      child: OpacityAnimatedWidget.tween(
                                        opacityEnabled: 1, //define start value
                                        opacityDisabled: 0, //and end value
                                        enabled: flipedPages[
                                            2], //bind with the boolean
                                        child: RotationAnimatedWidget.tween(
                                          enabled: flipedPages[2],
                                          rotationDisabled: Rotation.deg(y: 0),
                                          rotationEnabled: Rotation.deg(y: 180),
                                          child: getSpriteImage(41),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[8],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(
                                  8.3.h + 2.0.h + 2.0.h, 8.3.h + 0.5.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[8],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(0, -(50.0.w)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 200),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 2.0.h + 2.0.h + 2.0.h,
                                    top: 0.5.h + 0.5.h,
                                  ),
                                  height: 8.3.h + 0.5.h + 0.5.h,
                                  // width: 6.67.h +
                                  //     2.0.h +
                                  //     2.0.h,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(10 / 360),
                                    child: RotationAnimatedWidget.tween(
                                      enabled: flipedPages[2],
                                      rotationDisabled: Rotation.deg(y: 0),
                                      rotationEnabled: Rotation.deg(y: 180),
                                      child: OpacityAnimatedWidget.tween(
                                        opacityEnabled: 0, //define start value
                                        opacityDisabled: 1, //and end value
                                        enabled: flipedPages[
                                            2], //bind with the boolean
                                        child: RotationAnimatedWidget.tween(
                                          enabled: flipedPages[2],
                                          rotationDisabled:
                                              Rotation.deg(y: 180),
                                          rotationEnabled: Rotation.deg(y: 0),
                                          child: getSpriteImage(53),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          ImageConst.icProfilePic5,
                          height: 8.3.h,
                          width: 8.3.h,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5.0.h, left: 2.0.h),
                        child: Stack(
                          children: [
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[12],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h, 6.67.h + 0.29.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[12],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(-(23.26.h), 0),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: 0.29.h,
                                  ),
                                  height: 8.3.h + 0.29.h,
                                  width: 8.3.h,
                                  child: RotationTransition(
                                      turns: const AlwaysStoppedAnimation(
                                          350 / 360),
                                      child: getSpriteImage(10)),
                                ),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[13],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h + 2.0.h, 6.67.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[13],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(-(23.26.h), 0),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                    padding: EdgeInsets.only(
                                      left: 2.0.h,
                                      top: 0.5.h,
                                    ),
                                    height: 8.3.h + 0.5.h,
                                    width: 8.3.h + 2.0.h,
                                    child: getSpriteImage(25)),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[14],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h + 2.0.h + 2.0.h,
                                  6.67.h + 0.5.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[14],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled: Offset(-(23.26.h), 0),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 2.0.h + 2.0.h,
                                    top: 0.5.h + 0.5.h,
                                  ),
                                  height: 8.3.h + 0.5.h + 0.5.h,
                                  width: 8.3.h + 2.0.h + 2.0.h,
                                  child: RotationTransition(
                                      turns: const AlwaysStoppedAnimation(
                                          10 / 360),
                                      child: getSpriteImage(42)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 2.0.h),
                        child: Image.asset(
                          ImageConst.icProfilePic2,
                          height: 8.3.h,
                          width: 8.3.h,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0.0,
                  bottom: 0.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 5.0.h, left: 2.0.h),
                        child: Stack(
                          children: [
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[9],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h, 6.67.h + 0.29.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[9],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled:
                                    Offset(-(23.26.h), -(33.33.h)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    bottom: 0.29.h,
                                  ),
                                  height: 8.3.h + 0.29.h,
                                  width: 8.3.h,
                                  child: RotationTransition(
                                      turns: const AlwaysStoppedAnimation(
                                          350 / 360),
                                      child: getSpriteImage(34)),
                                ),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[10],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h + 2.0.h, 6.67.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[10],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled:
                                    Offset(-(23.26.h), -(33.33.h)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 500),
                                child: Container(
                                    padding: EdgeInsets.only(
                                      left: 2.0.h,
                                      top: 0.29.h,
                                    ),
                                    height: 8.3.h + 0.5.h,
                                    width: 8.3.h + 2.0.h,
                                    child: getSpriteImage(50)),
                              ),
                            ),
                            SizeAnimatedWidget.tween(
                              enabled: servedPages[11],
                              duration: const Duration(milliseconds: 200),
                              sizeEnabled: Size(6.67.h + 2.0.h + 2.0.h,
                                  6.67.h + 0.5.h + 0.5.h),
                              sizeDisabled: Size(0, 0),
                              curve: Curves.ease,
                              child: TranslationAnimatedWidget.tween(
                                enabled: servedPages[11],
                                delay: const Duration(milliseconds: 500),
                                translationEnabled: const Offset(0, 0),
                                translationDisabled:
                                    Offset(-(23.26.h), -(33.33.h)),
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 200),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 2.0.h + 2.0.h,
                                    top: 0.5.h + 0.5.h,
                                  ),
                                  height: 8.3.h + 0.5.h + 0.5.h,
                                  width: 8.3.h + 2.0.h + 2.0.h,
                                  child: RotationTransition(
                                      turns: const AlwaysStoppedAnimation(
                                          10 / 360),
                                      child: getSpriteImage(13)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 2.0.h),
                        child: Image.asset(
                          ImageConst.icProfilePic4,
                          height: 8.3.h,
                          width: 8.3.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getSpriteImage(int index) {
    if (index <= 13) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: SpriteWidget(
          sprite: samllCardSpriteSheet.getSprite(0, index - 1),
        ),
      );
    } else if (index > 13 && index <= 26) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: SpriteWidget(
          sprite: samllCardSpriteSheet.getSprite(1, index - 14),
        ),
      );
    } else if (index > 26 && index <= 39) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: SpriteWidget(
          sprite: samllCardSpriteSheet.getSprite(2, index - 27),
        ),
      );
    } else if (index > 39 && index <= 52) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: SpriteWidget(
          sprite: samllCardSpriteSheet.getSprite(3, index - 40),
        ),
      );
    } else if (index > 52 && index <= 54) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: SpriteWidget(
          sprite: samllCardSpriteSheet.getSprite(4, index - 53),
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: SpriteWidget(
          sprite: samllCardSpriteSheet.getSprite(4, 53),
        ),
      );
    }
  }
}
