import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'sized_box.dart';

Widget customCircleAvatarIcon({
  required dynamic myIcon,
  dynamic myIconColor = const Color(0xFFFF4D67),
  double iconSize = 30,
  dynamic circleBackgroundColor = Colors.white,
  Widget myIconUnderTitile = const SizedBox.shrink(),
  double myPadding = 10,
}) =>
    Padding(
      padding: EdgeInsets.symmetric(horizontal: myPadding.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor: circleBackgroundColor,
            child: Icon(myIcon, size: iconSize.sp, color: myIconColor),
          ),
          height10(),
          myIconUnderTitile,
        ],
      ),
    );