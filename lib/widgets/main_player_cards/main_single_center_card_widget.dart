import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/card_sprite_utils.dart';

class MainSingleCenterCardWidget extends StatelessWidget {
  const MainSingleCenterCardWidget({
    @required this.secondCardFliped,
    @required this.opacityEnabled,
    @required this.opacityDisabled,
    @required this.secondCard,
  });

  final bool secondCardFliped;
  final double opacityEnabled;
  final double opacityDisabled;
  final int secondCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 2.0.h + 2.0.h, top: 0.29.h),
      height: 8.3.h + 0.5.h,
      child: OpacityAnimatedWidget.tween(
        opacityEnabled: opacityEnabled,
        opacityDisabled: opacityDisabled,
        enabled: secondCardFliped,
        child: RotationAnimatedWidget.tween(
          enabled: secondCardFliped,
          rotationDisabled: Rotation.deg(y: 180),
          rotationEnabled: Rotation.deg(y: 0),
          child: getSpriteImage(secondCard),
        ),
      ),
    );
  }
}
