
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget myFullCustomButton(
        {String buttonTitle = 'My Buttonm',
        double buttonHeight = 60,
        double buttonWidth = double.infinity,
        double buttonFontSize = 20,
        dynamic buttonFontWeight = FontWeight.normal,
        dynamic buttonForgroundColor = Colors.white,
        dynamic buttonBackgroundColor = const Color(0xFF2962FF),
        dynamic buttonBorderColor = const Color(0xFF2962FF),
        double buttonBorderWidth = 2,
        double buttonBorderRadius = 30,
        double buttonPaddingVerticle = 0,
        double buttonPaddingHorizontal = 0,
        double buttonOoutsidePaddingHorizontal = 10,
        required VoidCallback myOnPressed}) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: buttonOoutsidePaddingHorizontal.w),
      height: buttonHeight.h,
      width: buttonWidth.w,
      child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.resolveWith<BorderSide>(
            (states) => BorderSide(width: buttonBorderWidth, color: buttonBorderColor),
          ),
          backgroundColor: MaterialStateProperty.all(buttonBackgroundColor),
          foregroundColor: MaterialStateProperty.all(buttonForgroundColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: buttonPaddingVerticle.h, horizontal: buttonPaddingHorizontal.w),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(buttonBorderRadius.r)),
          ),
        ),
        onPressed: myOnPressed,
        child: Text(
          buttonTitle,
          style: TextStyle(fontSize: buttonFontSize.sp, fontWeight: buttonFontWeight),
        ),
      ),
    );
