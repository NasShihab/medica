import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myColor.dart';

Widget pay_NextButton(BuildContext context,
        {required String tdButtonName,
        required String tdPageName}) =>
    Container(
        padding: EdgeInsets.symmetric(
            horizontal: 10.w),
        height: 60.h,
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(
                      Colors.blueAccent[700]),
              foregroundColor:
                  MaterialStateProperty.all(
                      Colors.white),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                      vertical: 14.h)),
              shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(
                              50.r))),
            ),
            onPressed: () {
              Navigator.pushNamed(
                  context, tdPageName);
            },
            child: Text(
              tdButtonName,
              style: TextStyle(fontSize: 20.sp),
            )));

Widget pay_AddNewButton(BuildContext context,
    {required String pay_AddNewButton_Name,
      required String pay_pageName}) =>
    Container(
        padding: EdgeInsets.symmetric(
            horizontal: 10.w),
        height: 60.h,
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(
                  Colors.lightBlue[100]),
              foregroundColor:
              MaterialStateProperty.all(
                  Colors.white),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                      vertical: 15.h)),
              shape: MaterialStateProperty.all<
                  RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(
                          50.r))),
            ),
            onPressed: () {
              Navigator.pushNamed(
                  context, pay_pageName);
            },
            child: Text(
              pay_AddNewButton_Name,
              style: TextStyle(fontSize: 18.sp,color: myBlueAccent),
            )));
