import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../Z_other/myColor.dart';

Widget hoursTime({required String bookingTime}) =>
    GestureDetector(
      onTap: (){
        Fluttertoast.showToast(
            msg: 'Time Selected',
            toastLength: Toast.LENGTH_SHORT
        );
      },
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: 2.w, vertical: 5.h),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.purple,
          ),
          borderRadius: const BorderRadius.all(
              Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 15.w, vertical: 5.h),
          child: Text(
            bookingTime,
            style: TextStyle(
                fontSize: 20.sp,
                color: myBlueAccent),
          ),
        ),
      ),
    );

Widget nextButton(BuildContext context,
    {required String tdButtonName, required String tdPageName}) =>
    SizedBox(
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