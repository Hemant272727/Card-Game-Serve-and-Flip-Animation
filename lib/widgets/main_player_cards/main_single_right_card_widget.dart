import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/card_sprite_utils.dart';

class MainSingleRightCardWidget extends StatelessWidget {
  const MainSingleRightCardWidget({
    @required this.thirdCardFliped,
    @required this.opacityEnabled,
    @required this.opacityDisabled,
    @required this.thirdCard,
  });

  final bool thirdCardFliped;
  final double opacityEnabled;
  final double opacityDisabled;
  final int thirdCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 2.0.h + 2.0.h + 2.0.h, top: 0.5.h + 0.5.h),
      height: 8.3.h + 0.5.h + 0.5.h,
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(10 / 360),
        child: RotationAnimatedWidget.tween(
          enabled: thirdCardFliped,
          rotationDisabled: Rotation.deg(y: 0),
          rotationEnabled: Rotation.deg(y: 180),
          child: OpacityAnimatedWidget.tween(
            opacityEnabled: opacityEnabled,
            opacityDisabled: opacityDisabled,
            enabled: thirdCardFliped,
            child: RotationAnimatedWidget.tween(
              enabled: thirdCardFliped,
              rotationDisabled: Rotation.deg(y: 0),
              rotationEnabled: Rotation.deg(y: 180),
              child: getSpriteImage(thirdCard),
            ),
          ),
        ),
      ),
    );
  }
}
