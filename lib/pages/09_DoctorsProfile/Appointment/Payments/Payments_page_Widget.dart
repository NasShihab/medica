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

Widget boxPayment(
        {required String payIcon,
        required String payText}) =>
    Container(
      padding:
          EdgeInsets.symmetric(horizontal: 15.w),
      height: 70.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(15.r)),
        color: Colors.white,
        border: Border.all(color: Colors.transparent),
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.start,
            children: [
              Card(
                  child: Image(
                      height: 40.h,
                      width: 40.w,
                      image:
                          AssetImage(payIcon))),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 15.w),
                  child: Text(
                    payText,
                    style: TextStyle(
                        fontWeight:
                            FontWeight.bold,
                        fontSize: 20.sp),
                  )),
            ],
          ),
          Radio(
            value: 1,
            groupValue: 'sd',
            onChanged: (index) {},
          ),
        ],
      ),
    );
