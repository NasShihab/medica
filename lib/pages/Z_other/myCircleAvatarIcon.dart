import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';

Widget myCircleAvatarIcon({
  required dynamic myIcon,
  dynamic myIcon_Color = const Color(0xFF2962FF),
  double myIcon_Size = 30,
  dynamic Circle_Background_Color = const Color(0xFFCFD8DC),
  Widget myIconUnderTitile = const SizedBox.shrink(),
  double myPadding = 10,
}) =>
    Padding(
      padding: EdgeInsets.symmetric(horizontal: myPadding.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor: Circle_Background_Color,
            child: Icon(myIcon, size: myIcon_Size.sp, color: myIcon_Color),
          ),
          height10(),
          myIconUnderTitile,
        ],
      ),
    );