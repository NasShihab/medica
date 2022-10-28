import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'sized_box.dart';

Widget customListTile({
  Widget myChartLeading = const Image(image: AssetImage('assets/images/doctors/doctor3.png')),
  Widget myChartTitle = const SizedBox.shrink(),
  Widget myChartMinTitle = const SizedBox.shrink(),
  Widget myChartBottom = const SizedBox.shrink(),
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
                    child: myChartLeading,
                  ),
                ),
              ),
              width10(),
              Expanded(
                flex: 2,
                child: myChartTitle,
              ),
            ],
          ),
          myChartBottom,
        ],
      ),
    );