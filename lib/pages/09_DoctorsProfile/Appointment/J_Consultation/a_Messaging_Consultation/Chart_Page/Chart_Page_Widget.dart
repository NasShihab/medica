// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Z_other/myColor.dart';
import '../../../../../Z_other/mySizedBox.dart';

Widget myChatBox_Out({
  String my_text = 'the definition of chat refers to talking to other people who are using the internet at the same time you are.',
  double my_text_fontSize = 18,
  double myBorderText_borderRadius = 20,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 60.w),
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
            decoration: BoxDecoration(
              color: myBlueAccent,
              borderRadius: BorderRadius.all(Radius.circular(myBorderText_borderRadius.r)),
              border: Border.all(color: Colors.transparent),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    my_text,
                    style: TextStyle(color: Colors.white, fontSize: my_text_fontSize.sp),
                  ),
                ),
                width10(),
                Text(
                  '16:00',
                  style: TextStyle(color: Colors.white, fontSize: 14.sp),
                ),
                width5(),
                Icon(
                  Icons.done_all,
                  color: Colors.white,
                  size: 18.sp,
                )
              ],
            ),
          ),
        ),
      ],
    );

Widget myChatBox_In({
  String my_text = 'the definition of chat refers to talking to other people who are using the internet at the same time you are.',
  double my_text_fontSize = 18,
  double myBorderText_borderRadius = 20,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 60.w),
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
            decoration: BoxDecoration(
              color: myBluegrey,
              borderRadius: BorderRadius.all(Radius.circular(myBorderText_borderRadius.r)),
              border: Border.all(color: Colors.transparent),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    my_text,
                    style: TextStyle(color: Colors.black, fontSize: my_text_fontSize.sp),
                  ),
                ),
                width10(),
                Text(
                  '16:00',
                  style: TextStyle(color: Colors.black, fontSize: 14.sp),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget myCircleIcon({
  double myrRadius = 25,
  dynamic myBackgroundColor = const Color(0xFF2962FF),
  dynamic myforegroundColor = Colors.white,
  dynamic myIcon = Icons.mic,
  double myIconSize = 30,
  String myIconText = 'Label'
}) =>
    Column(
      children: [
        CircleAvatar(
          radius: myrRadius,
          backgroundColor: myBackgroundColor,
          foregroundColor: myforegroundColor,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              myIcon,
              size: myIconSize.sp,
            ),
          ),
        ),
        height5(),
        Text(myIconText, style: TextStyle(fontSize: 16.sp),)
      ],
    );
