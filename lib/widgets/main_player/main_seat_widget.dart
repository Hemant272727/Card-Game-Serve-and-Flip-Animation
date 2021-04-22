import 'package:animated_widgets/animated_widgets.dart';
import 'package:card_game_serve_and_flip_animation/widgets/main_player_cards/main_single_center_card_widget.dart';
import 'package:card_game_serve_and_flip_animation/widgets/main_player_cards/main_single_right_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/card_sprite_utils.dart';
import '../main_player_cards/main_single_left_card_widget.dart';

class Player3SeatWidget extends StatelessWidget {
  const Player3SeatWidget({
    @required this.userProfileImage,
    @required this.firstCardServed,
    @required this.secondCardServed,
    @required this.thirdCardServed,
    @required this.firstCardFliped,
    @required this.secondCardFliped,
    @required this.thirdCardFliped,
    @required this.firstCardNo,
    @required this.secondCardNo,
    @required this.thirdCardNo,
  });

  final String userProfileImage;
  final bool firstCardServed;
  final bool secondCardServed;
  final bool thirdCardServed;
  final bool firstCardFliped;
  final bool secondCardFliped;
  final bool thirdCardFliped;
  final int firstCardNo;
  final int secondCardNo;
  final int thirdCardNo;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                  enabled: firstCardServed,
                  duration: const Duration(milliseconds: 200),
                  sizeEnabled: Size(8.3.h, 8.3.h + 0.29.h),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: TranslationAnimatedWidget.tween(
                    enabled: firstCardServed,
                    delay: const Duration(milliseconds: 500),
                    translationEnabled: const Offset(0, 0),
                    translationDisabled: Offset(0, -(50.0.w)),
                    curve: Curves.ease,
                    duration: const Duration(milliseconds: 500),
                    child: MainSingleLeftCardWidget(
                      firstCardFliped: firstCardFliped,
                      opacityEnabled: 1,
                      opacityDisabled: 0,
                      firstCard: 52,
                    ),
                  ),
                ),
                SizeAnimatedWidget.tween(
                  enabled: firstCardServed,
                  duration: const Duration(milliseconds: 200),
                  sizeEnabled: Size(8.3.h, 8.3.h + 0.29.h),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: TranslationAnimatedWidget.tween(
                    enabled: firstCardServed,
                    delay: const Duration(milliseconds: 500),
                    translationEnabled: const Offset(0, 0),
                    translationDisabled: Offset(0, -(50.0.w)),
                    curve: Curves.ease,
                    duration: const Duration(milliseconds: 500),
                    child: MainSingleLeftCardWidget(
                      firstCardFliped: firstCardFliped,
                      opacityEnabled: 0,
                      opacityDisabled: 1,
                      firstCard: 53,
                    ),
                  ),
                ),
                SizeAnimatedWidget.tween(
                  enabled: secondCardServed,
                  duration: const Duration(milliseconds: 200),
                  sizeEnabled: Size(8.3.h + 2.0.h, 8.3.h + 0.5.h),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: TranslationAnimatedWidget.tween(
                    enabled: secondCardServed,
                    delay: const Duration(milliseconds: 500),
                    translationEnabled: const Offset(0, 0),
                    translationDisabled: Offset(0, -(50.0.w)),
                    curve: Curves.ease,
                    duration: const Duration(milliseconds: 500),
                    child: MainSingleCenterCardWidget(
                      secondCardFliped: secondCardFliped,
                      opacityEnabled: 1,
                      opacityDisabled: 0,
                      secondCard: 42,
                    ),
                  ),
                ),
                SizeAnimatedWidget.tween(
                  enabled: secondCardServed,
                  duration: const Duration(milliseconds: 200),
                  sizeEnabled: Size(8.3.h + 2.0.h, 8.3.h + 0.5.h),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: TranslationAnimatedWidget.tween(
                    enabled: secondCardServed,
                    delay: const Duration(milliseconds: 500),
                    translationEnabled: const Offset(0, 0),
                    translationDisabled: Offset(0, -(50.0.w)),
                    curve: Curves.ease,
                    duration: const Duration(milliseconds: 500),
                    child: MainSingleCenterCardWidget(
                      secondCardFliped: secondCardFliped,
                      opacityEnabled: 0,
                      opacityDisabled: 1,
                      secondCard: 53,
                    ),
                  ),
                ),
                SizeAnimatedWidget.tween(
                  enabled: thirdCardServed,
                  duration: const Duration(milliseconds: 200),
                  sizeEnabled:
                      Size(8.3.h + 2.0.h + 2.0.h, 8.3.h + 0.5.h + 0.5.h),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: TranslationAnimatedWidget.tween(
                    enabled: thirdCardServed,
                    delay: const Duration(milliseconds: 500),
                    translationEnabled: const Offset(0, 0),
                    translationDisabled: Offset(0, -(50.0.w)),
                    curve: Curves.ease,
                    duration: const Duration(milliseconds: 200),
                    child: MainSingleRightCardWidget(
                      thirdCardFliped: thirdCardFliped,
                      opacityEnabled: 1,
                      opacityDisabled: 0,
                      thirdCard: 41,
                    ),
                  ),
                ),
                SizeAnimatedWidget.tween(
                  enabled: thirdCardServed,
                  duration: const Duration(milliseconds: 200),
                  sizeEnabled:
                      Size(8.3.h + 2.0.h + 2.0.h, 8.3.h + 0.5.h + 0.5.h),
                  sizeDisabled: Size(0, 0),
                  curve: Curves.ease,
                  child: TranslationAnimatedWidget.tween(
                    enabled: thirdCardServed,
                    delay: const Duration(milliseconds: 500),
                    translationEnabled: const Offset(0, 0),
                    translationDisabled: Offset(0, -(50.0.w)),
                    curve: Curves.ease,
                    duration: const Duration(milliseconds: 200),
                    child: MainSingleRightCardWidget(
                      thirdCardFliped: thirdCardFliped,
                      opacityEnabled: 0,
                      opacityDisabled: 1,
                      thirdCard: 53,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset(
              userProfileImage,
              height: 8.3.h,
              width: 8.3.h,
            ),
          ),
        ],
      ),
    );
  }
}
