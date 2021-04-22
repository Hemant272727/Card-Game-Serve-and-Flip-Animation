import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/card_sprite_utils.dart';

class MainSingleLeftCardWidget extends StatelessWidget {
  const MainSingleLeftCardWidget({
    @required this.firstCardFliped,
    @required this.opacityEnabled,
    @required this.opacityDisabled,
    @required this.firstCard,
  });

  final bool firstCardFliped;
  final double opacityEnabled;
  final double opacityDisabled;
  final int firstCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 0.29.h, left: 2.0.h),
      height: 8.3.h + 0.29.h,
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(350 / 360),
        child: OpacityAnimatedWidget.tween(
          opacityEnabled: opacityEnabled,
          opacityDisabled: opacityDisabled,
          enabled: firstCardFliped,
          child: RotationAnimatedWidget.tween(
            enabled: firstCardFliped,
            rotationDisabled: Rotation.deg(y: 180),
            rotationEnabled: Rotation.deg(y: 0),
            child: getSpriteImage(firstCard),
          ),
        ),
      ),
    );
  }
}
