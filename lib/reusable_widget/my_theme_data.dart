import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/reusable_widget/color_custom.dart';

var mainColor = 0xFFFF4D67;

ThemeData myThemeData() => ThemeData(
  fontFamily: 'Roboto',
  primarySwatch: MaterialColor(mainColor, {
    50: Color(mainColor),
    100: Color(mainColor),
    200: Color(mainColor),
    300: Color(mainColor),
    400: Color(mainColor),
    500: Color(mainColor),
    600: Color(mainColor),
    700: Color(mainColor),
    800: Color(mainColor),
    900: Color(mainColor),
  }),
  iconTheme: IconThemeData(color: myPinkAccent, size: 24.sp),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: myPinkAccent,
      foregroundColor: Colors.white
    ),
  ),
  appBarTheme: AppBarTheme(
      foregroundColor: Colors.black,
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.red,
        size: 24.sp,
      )),
);