import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../reusable_widget/color_custom.dart';

Widget paymentNextButton(BuildContext context,
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

Widget paymentAddNewButton(BuildContext context,
    {required String paymentAddNewButtonName,
      required String paymentPageName}) =>
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
                  context, paymentPageName);
            },
            child: Text(
              paymentAddNewButtonName,
              style: TextStyle(fontSize: 18.sp,color: myPinkAccent),
            )));
