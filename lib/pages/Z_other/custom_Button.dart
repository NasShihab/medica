import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'myColor.dart';

Widget mycustom_button_Blue(BuildContext context,
    {required String btname,required String pageName}) =>
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
                  context, pageName);
            },
            child: Text(
              btname,
              style: TextStyle(fontSize: 20.sp),
            )));


Widget mycustom_button_Accent(BuildContext context,
    {required String bttname,
      required String btt_pageName}) =>
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
                  context, btt_pageName);
            },
            child: Text(
              bttname,
              style: TextStyle(fontSize: 20.sp,color: myBlueAccent),
            )));

Widget mycustom_ShowDialogbutton_Accent(BuildContext context,
    {required String btttname, required Widget myCustomDialog}) =>
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
                  Colors.blue),
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
              showDialog(
                  context: context,
                  builder:
                      (context) => myCustomDialog);
            },
            child: Text(
              btttname,
              style: TextStyle(fontSize: 20.sp,color: myBlueAccent),
            )));

Widget mycustom_ShowDialogbutton_Blue(BuildContext context,
    {required String bttttname, required Widget myCCustomDialog}) =>
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
              showDialog(
                  context: context,
                  builder:
                      (context) => myCCustomDialog);
            },
            child: Text(
              bttttname,
              style: TextStyle(fontSize: 20.sp,color: Colors.white),
            )));