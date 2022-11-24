import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customBorderText({
  required String myText,
  dynamic myTextColor = const Color(0xFFFF4D67),
  double myTextFontSize = 14,
  double myBorderTextBorderRadius = 8,
  dynamic myBorderTextBorderColor = const Color(0xFFFF4D67),
  dynamic myBackGroundColor = Colors.white,
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
      decoration: BoxDecoration(
        color: myBackGroundColor,
        borderRadius: BorderRadius.all(Radius.circular(myBorderTextBorderRadius.r)),
        border: Border.all(color: myBorderTextBorderColor),
      ),
      child: Text(
        myText,
        style: TextStyle(color: myTextColor, fontSize: myTextFontSize.sp),
      ),
    );
