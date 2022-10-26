// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget myFullCustomButton(
        {String myButtonTitle = 'My Buttonm',
        double myButtonHeight = 60,
        double myButtonWidth = double.infinity,
        double myButtonFontSize = 20,
        dynamic myButtonFontWeight = FontWeight.normal,
        dynamic myButtonForgroundColor = Colors.white,
        dynamic myButtonBackgroundColor = const Color(0xFF2962FF),
        dynamic myButtonBorderColor = const Color(0xFF2962FF),
        double myButton_BorderWidth = 2,
        double myButton_BorderRadius = 30,
        double paddingVerticle = 0,
        double paddingHorizontal = 0,
        double outsidePaddingHorizontal = 10,
        required VoidCallback myOnPressed}) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: outsidePaddingHorizontal.w),
      height: myButtonHeight.h,
      width: myButtonWidth.w,
      child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.resolveWith<BorderSide>(
            (states) => BorderSide(width: myButton_BorderWidth, color: myButtonBorderColor),
          ),
          backgroundColor: MaterialStateProperty.all(myButtonBackgroundColor),
          foregroundColor: MaterialStateProperty.all(myButtonForgroundColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: paddingVerticle.h, horizontal: paddingHorizontal.w),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(myButton_BorderRadius.r)),
          ),
        ),
        onPressed: myOnPressed,
        child: Text(
          myButtonTitle,
          style: TextStyle(fontSize: myButtonFontSize.sp, fontWeight: myButtonFontWeight),
        ),
      ),
    );
