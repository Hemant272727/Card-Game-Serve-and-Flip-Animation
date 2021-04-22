import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/card_sprite_utils.dart';

class SingleLeftCardWidget extends StatelessWidget {
  const SingleLeftCardWidget({
    @required this.firstCardNo,
  });

  final int firstCardNo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0.29.h),
      height: 8.3.h + 0.29.h,
      width: 8.3.h,
      child: RotationTransition(
        turns: const AlwaysStoppedAnimation(350 / 360),
        child: getSpriteImage(firstCardNo),
      ),
    );
  }
}
