import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Z_other/custom_color.dart';
import '../../../Z_other/custom_sized_box.dart';

Widget customSelectPackage({
  dynamic spicon = Icons.message,
  String spText1 = 'Messaging',
  String spText2 = 'Chat With',
  int spRate = 20,
  String spMinutes = '30',
  Widget spWidget = const SizedBox.shrink(),
}) =>
    Container(
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
          color: Colors.white,
          border: Border.all(
            color: Colors.transparent,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
                radius: 30.r,
                backgroundColor: Colors.blueGrey[100],
                child: Icon(
                  spicon,
                  size: 30.sp,
                  color: myBlueAccent,
                )),
          ),
          width10(),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  spText1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.normal),
                ),
                height10(),
                Text(
                  spText2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          width10(),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$$spRate',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: myBlueAccent, fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    height10(),
                    Text(
                      spMinutes,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey[700]),
                    ),
                  ],
                ),
                spWidget,
              ],
            ),
          ),
        ],
      ),
    );
