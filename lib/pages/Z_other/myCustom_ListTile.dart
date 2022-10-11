// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';

Widget myCustom_ListTile({
  Widget myChart_Leading = const Image(image: AssetImage('assets/images/doctors/doctor3.png')),
  Widget myChart_Title = const SizedBox.shrink(),
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
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    // Leading
                    child: myChart_Leading,
                  ),
                ),
              ),
              width10(),
              Expanded(
                flex: 2,
                child: myChart_Title,
              ),
            ],
          ),
          myChart_Bottom,
        ],
      ),
    );