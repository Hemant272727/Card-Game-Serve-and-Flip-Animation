import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/card_sprite_utils.dart';
import 'single_center_cards_widget.dart';
import 'single_left_card_widget.dart';

class LeftTopSeatWidget extends StatelessWidget {
  const LeftTopSeatWidget({
    @required this.userProfileImage,
    @required this.firstCardServed,
    @required this.secondCardServed,
    @required this.thirdCardServed,
    @required this.firstCardNo,
    @required this.secondCardNo,
    @required this.thirdCardNo,
  });

  final String userProfileImage;
  final bool firstCardServed;
  final bool secondCardServed;
  final bool thirdCardServed;
  final int firstCardNo;
  final int secondCardNo;
  final int thirdCardNo;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 2.0.w),
            child: Image.asset(
              userProfileImage,
              height: 8.3.h,
              width: 8.3.h,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0.h, left: 2.0.h),
            child: Stack(
              children: [
                SizeAnimatedWidget.tween(
                  enabled: firstCardServed,
                  duration: const Duration(milliseconds: 200),
                  sizeEnabled: Size(6.67.h, 6.67.h + 0.29.h),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: TranslationAnimatedWidget.tween(
                    enabled: firstCardServed,
                    delay: const Duration(milliseconds: 500),
                    translationEnabled: const Offset(0, 0),
                    translationDisabled: Offset(23.26.h, 0),
                    curve: Curves.ease,
                    duration: const Duration(milliseconds: 200),
                    child: SingleLeftCardWidget(firstCardNo: firstCardNo),
                  ),
                ),
                SizeAnimatedWidget.tween(
                  enabled: secondCardServed,
                  duration: const Duration(milliseconds: 200),
                  sizeEnabled: Size(6.67.h + 2.0.h, 6.67.h + 0.5.h),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: TranslationAnimatedWidget.tween(
                      enabled: secondCardServed,
                      delay: const Duration(milliseconds: 500),
                      translationEnabled: const Offset(0, 0),
                      translationDisabled: Offset(23.26.h, 0),
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                      child: CenterCardsWidget(secondCardNo: secondCardNo)),
                ),
                SizeAnimatedWidget.tween(
                  enabled: thirdCardServed,
                  duration: const Duration(milliseconds: 200),
                  sizeEnabled:
                      Size(6.67.h + 2.0.h + 2.0.h, 6.67.h + 0.5.h + 0.5.h),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: TranslationAnimatedWidget.tween(
                    enabled: thirdCardServed,
                    delay: const Duration(milliseconds: 500),
                    translationEnabled: const Offset(0, 0),
                    translationDisabled: Offset(23.26.h, 0),
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
                          turns: const AlwaysStoppedAnimation(10 / 360),
                          child: getSpriteImage(thirdCardNo)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
