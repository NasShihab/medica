import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget myBorderText({
  required String my_text,
  dynamic my_text_color = Colors.blue,
  double my_text_fontSize = 14,
  double myBorderText_borderRadius = 8,
  dynamic myBorderText_borderColor = Colors.blue,
  dynamic myBackColor = Colors.white,
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
      decoration: BoxDecoration(
        color: myBackColor,
        borderRadius: BorderRadius.all(Radius.circular(myBorderText_borderRadius.r)),
        border: Border.all(color: myBorderText_borderColor),
      ),
      child: Text(
        my_text,
        style: TextStyle(color: my_text_color, fontSize: my_text_fontSize.sp),
      ),
    );
