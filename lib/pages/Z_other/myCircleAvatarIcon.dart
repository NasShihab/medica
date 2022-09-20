import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget myCircleAvatarIcon({
  required dynamic myIcon,
  dynamic myIcon_Color = const Color(0xFF2962FF),
  double myIcon_size = 30,
  dynamic Circle_Background_Color = const Color(0xFFCFD8DC),
}) =>
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor: Circle_Background_Color,
            child: Icon(myIcon, size: myIcon_size.sp, color: myIcon_Color),
          ),
        ],
      ),
    );