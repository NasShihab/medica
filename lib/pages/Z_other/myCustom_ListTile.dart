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
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myChart_Title,
                      myChart_Subtitle,
                      myChart_MinTitle,
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

Widget myBorderText({
  required String my_text,
  dynamic my_text_color = Colors.blue,
  double my_text_fontSize = 14,
  double myBorderText_borderRadius = 8,
  dynamic myBorderText_borderColor = Colors.blue,
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(myBorderText_borderRadius.r)),
        border: Border.all(color: myBorderText_borderColor),
      ),
      child: Text(
        my_text,
        style: TextStyle(color: my_text_color, fontSize: my_text_fontSize.sp),
      ),
    );

Widget myCircleAvatarIcon({
  required dynamic myIcon,
  dynamic myIcon_Color = const Color(0xFF2962FF),
  double myIcon_size = 30,
  dynamic Circle_Background_Color = const Color(0xFFCFD8DC),
}) =>
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor: Circle_Background_Color,
            child: Icon(myIcon, size: myIcon_size.sp, color: myIcon_Color),
          ),
        ],
      ),
    );