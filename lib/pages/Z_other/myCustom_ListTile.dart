// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget myCustom_ListTile({
  String myChart_Leading = 'assets/images/doctors/doctor2.jpg',
  Widget myChart_Title = const SizedBox.shrink(),
  Widget myChart_Subtitle = const SizedBox.shrink(),
  Widget myChart_MinTitle = const SizedBox.shrink(),
  Widget myChart_Bottom = const SizedBox.shrink(),
}) =>
    Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.deepOrange[50],
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        // Leading
                        child: Image.asset(myChart_Leading),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myChart_Title,
                    myChart_Subtitle,
                    myChart_MinTitle,
                  ],
                ),
              ),
            ],
          ),
          myChart_Bottom,
        ],
      ),
    );
