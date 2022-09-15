// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Leave_a_review_Button(BuildContext context, {required String btname, required String pageName}) => Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    height: 35.h,
    child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.resolveWith<BorderSide>((states) => const BorderSide(width: 2, color: Colors.blue)),
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0.h, horizontal: 0.w)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r))),
        ),
        onPressed: () {
          Navigator.pushNamed(context, pageName);
        },
        child: Text(
          btname,
          style: TextStyle(fontSize: 16.sp),
        )));

Widget Book_again_button(BuildContext context, {required String btname, required String pageName}) => Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    height: 35.h,
    child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.resolveWith<BorderSide>((states) => const BorderSide(width: 2, color: Colors.blue)),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.blue[700]),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0.h, horizontal: 0.w)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r))),
        ),
        onPressed: () {
          Navigator.pushNamed(context, pageName);
        },
        child: Text(
          btname,
          style: TextStyle(fontSize: 16.sp),
        )));
