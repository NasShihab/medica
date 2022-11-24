import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget myFullCustomButton({String buttonTitle = 'My Buttonm', double buttonHeight = 60, double buttonWidth = double.infinity, double buttonFontSize = 20, dynamic buttonFontWeight = FontWeight.normal, dynamic buttonForgroundColor = Colors.white, dynamic buttonBackgroundColor = const Color(0xFFFF4D67), dynamic buttonBorderColor = const Color(0xFFFF4D67), double buttonBorderWidth = 2, double buttonBorderRadius = 30, double buttonPaddingVerticle = 0, double buttonPaddingHorizontal = 0, double buttonOoutsidePaddingHorizontal = 10, required VoidCallback myOnPressed}) => Container(
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

Widget myTextButton({
  required String icon,
  required String label,
}) =>
    SizedBox(
      height: 60.h,
      width: double.infinity,
      child: TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white), foregroundColor: MaterialStateProperty.all(Colors.black), padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 18.h)), elevation: MaterialStateProperty.all(.5)),
        icon: CircleAvatar(
          radius: 11.r,
          backgroundImage: AssetImage(icon),
          backgroundColor: Colors.transparent,
        ),
        label: Text(
          label,
          style: TextStyle(fontSize: 15.sp),
        ),
      ),
    );

Widget myTextField({
  required Icon icon,
  required Icon suffixIcon,
  required String hintText,
}) =>
    SizedBox(
      height: 50.h,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: icon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 12.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.grey, width: 1.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.grey, width: 1.w),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
      ),
    );
Widget myPasswordField({
  required Icon icon,
  required Icon suffixIcon,
  required String hintText,
  double height = 50,
}) =>
    SizedBox(
      height: height.h,
      width: double.infinity,
      child: TextField(
        obscureText: true,
        enableSuggestions: false,
        autocorrect: false,
        decoration: InputDecoration(
            prefixIcon: icon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 12.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.grey, width: 1.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.grey, width: 1.w),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
      ),
    );

Widget myTextFieldPrefix({
  required Icon myPrefixIcon,
  required Icon mySuffixIcon,
  required String htext,
}) =>
    Expanded(
      child: SizedBox(
        height: 50.h,
        width: double.infinity,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: myPrefixIcon,
              suffixIcon: mySuffixIcon,
              hintText: htext,
              hintStyle: TextStyle(fontSize: 12.sp),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: Colors.grey, width: 1.w),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: Colors.grey, width: 1.w),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
        ),
      ),
    );
