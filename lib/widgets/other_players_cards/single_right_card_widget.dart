import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/card_sprite_utils.dart';

class SingleRightCardWidget extends StatelessWidget {
  const SingleRightCardWidget({
    Key key,
    @required this.thirdCardNo,
  }) : super(key: key);

  final int thirdCardNo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 2.0.h + 2.0.h,
        top: 0.5.h + 0.5.h,
      ),
      height: 8.3.h + 0.5.h + 0.5.h,
      width: 8.3.h + 2.0.h + 2.0.h,
      child: RotationTransition(
          turns: const AlwaysStoppedAnimation(10 / 360),
          child: getSpriteImage(thirdCardNo)),
    );
  }
}
