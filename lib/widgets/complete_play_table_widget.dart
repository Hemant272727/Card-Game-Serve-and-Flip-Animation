import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/image_constants.dart';
import 'other_players/left_bottom_seat_widget.dart';
import 'other_players/left_top_seat_widget.dart';
import 'other_players/right_bottom_seat_widget.dart';
import 'other_players/right_top_seat_widget.dart';
import 'main_player/main_seat_widget.dart';

class CompletePlayTableWidget extends StatelessWidget {
  final List<bool> servedPages;
  final List<bool> flipedPages;

  const CompletePlayTableWidget({
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
                LeftTopSeatWidget(
                  firstCardServed: servedPages[0],
                  secondCardServed: servedPages[1],
                  thirdCardServed: servedPages[2],
                  userProfileImage: ImageConst.icProfilePic1,
                  firstCardNo: 3,
                  secondCardNo: 11,
                  thirdCardNo: 27,
                ),
                LeftBottomSeatWidget(
                  firstCardServed: servedPages[3],
                  secondCardServed: servedPages[4],
                  thirdCardServed: servedPages[5],
                  userProfileImage: ImageConst.icProfilePic2,
                  firstCardNo: 39,
                  secondCardNo: 43,
                  thirdCardNo: 24,
                ),
                Player3SeatWidget(
                  firstCardServed: servedPages[6],
                  secondCardServed: servedPages[7],
                  thirdCardServed: servedPages[8],
                  firstCardFliped: flipedPages[0],
                  secondCardFliped: flipedPages[1],
                  thirdCardFliped: flipedPages[2],
                  userProfileImage: ImageConst.icProfilePic3,
                  firstCardNo: 34,
                  secondCardNo: 50,
                  thirdCardNo: 13,
                ),
                RightBottomSeatWidget(
                  firstCardServed: servedPages[9],
                  secondCardServed: servedPages[10],
                  thirdCardServed: servedPages[11],
                  userProfileImage: ImageConst.icProfilePic4,
                  firstCardNo: 34,
                  secondCardNo: 50,
                  thirdCardNo: 13,
                ),
                RightTopSeatWidget(
                  firstCardServed: servedPages[12],
                  secondCardServed: servedPages[13],
                  thirdCardServed: servedPages[14],
                  userProfileImage: ImageConst.icProfilePic5,
                  firstCardNo: 10,
                  secondCardNo: 25,
                  thirdCardNo: 42,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
