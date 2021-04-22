import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/card_sprite_utils.dart';

class CenterCardsWidget extends StatelessWidget {
  const CenterCardsWidget({
    @required this.secondCardNo,
  });

  final int secondCardNo;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: 2.0.h,
          top: 0.5.h,
        ),
        height: 8.3.h + 0.5.h,
        width: 8.3.h + 2.0.h,
        child: getSpriteImage(secondCardNo));
  }
}
