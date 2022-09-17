// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'myColor.dart';
import 'mySizedBox.dart';

Widget myCustom_ListTile({
  String myChart_DoctorImage = 'assets/images/doctors/doctor2.jpg',
  Widget myChart_DoctorTitle = const SizedBox.shrink(),
  String myChart_DoctorConnect = 'Video Call  -',
  dynamic myChart_AlertIcon = Icons.call,
  String myChart_DoctorTime = '20 Feb 2020  |  10:00PM',
  Widget myChart_DoctorAlertText = const SizedBox.shrink(),
  Widget myChart_Bottom = const SizedBox.shrink(),
}) =>
    Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.deepOrange[50],
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        child: Image.asset(myChart_DoctorImage),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myChart_DoctorTitle,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(myChart_DoctorConnect, style: TextStyle(fontSize: 16.sp)),
                          myChart_DoctorAlertText,
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30.r,
                                    backgroundColor: Colors.blueGrey[100],
                                    child: Icon(myChart_AlertIcon, size: 30.sp, color: myBlueAccent),
                                  ),
                                  height10(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(myChart_DoctorTime, style: TextStyle(fontSize: 16.sp)),
                    ],
                  ),
                ),
              ),

            ],
          ),
          myChart_Bottom,
        ],
      ),
    );