
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../reusable_widget/color_custom.dart';
import '../../../../reusable_widget/sized_box.dart';

Widget myChatBoxOut({
  String myText = 'the definition of chat refers to talking to other people who are using the internet at the same time you are.',
  double myTextFontSize = 18,
  double myBorderTextBorderRadius = 20,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 60.w),
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
            decoration: BoxDecoration(
              color: myPinkAccent,
              borderRadius: BorderRadius.all(Radius.circular(myBorderTextBorderRadius.r)),
              border: Border.all(color: Colors.transparent),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    myText,
                    style: TextStyle(color: Colors.white, fontSize: myTextFontSize.sp),
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

Widget myChatBoxIn({
  String myText = 'the definition of chat refers to talking to other people who are using the internet at the same time you are.',
  double myTextFontSize = 18,
  double myBorderTextBorderRadius = 20,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 60.w),
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
            decoration: BoxDecoration(
              color: myGrey,
              borderRadius: BorderRadius.all(Radius.circular(myBorderTextBorderRadius.r)),
              border: Border.all(color: Colors.transparent),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    myText,
                    style: TextStyle(color: Colors.black, fontSize: myTextFontSize.sp),
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
