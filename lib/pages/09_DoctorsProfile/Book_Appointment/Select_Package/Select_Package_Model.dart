import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Z_other/myColor.dart';
import '../../../Z_other/mySizedBox.dart';

Widget CustomIcon_Select_Package(
        {required var spicon,
        required String spText1,
        required String spText2,
        required int spRate,
        required int spMinutes}) =>
    Container(
      padding: EdgeInsets.symmetric(
          horizontal: 10.w, vertical: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
        color: Colors.white,
        border: Border.all(
          color: Colors.transparent,
        )
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.start,
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 30.r,
              backgroundColor:
                  Colors.blueGrey[100],
              child: Icon(
                spicon,
                size: 30.sp,
                color: myBlueAccent,
              )),
          width10(),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Text(
                spText1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight:
                        FontWeight.normal),
              ),
              height10(),
              Text(
                spText2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey[700]),
              ),
            ],
          ),
          width20(),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                '\$$spRate',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: myBlueAccent,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
              height10(),
              Text(
                '$spMinutes Min',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey[700]),
              ),
            ],
          ),
          Flexible(
            child: Radio(
              value: 1,
              groupValue: 'sd',
              onChanged: (index) {},
            ),
          ),
        ],
      ),
    );

Widget spNextButton(BuildContext context,
    {required String tdButtonName, required String tdPageName}) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
        height: 60.h,
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(Colors.blueAccent[700]),
              foregroundColor:
              MaterialStateProperty.all(Colors.white),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 14.h)),
              shape:
              MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.r))),
            ),
            onPressed: () {
              Navigator.pushNamed(context, tdPageName);
            },
            child: Text(
              'Next',
              style: TextStyle(fontSize: 20.sp),
            )));