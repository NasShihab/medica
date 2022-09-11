import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget add_Card_TextField(
    { required String pdHintText}) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      height: 60.h,
      child: TextField(
        decoration: InputDecoration(
            hintText: pdHintText,
            hintStyle: TextStyle(fontSize: 16.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 1.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 1.w),
            ),
            contentPadding:
            EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
      ),
    );

Widget Expiry_TextField(
    { required String exHintText}) =>
    SizedBox(
      height: 50.h,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.calendar_month_outlined),
            hintText: exHintText,
            hintStyle: TextStyle(fontSize: 16.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 1.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 1.w),
            ),
            contentPadding:
            EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
      ),
    );