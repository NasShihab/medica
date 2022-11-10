import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget pdNextButton(BuildContext context, {required String tdButtonName, required String tdPageName}) => Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    height: 60.h,
    width: double.infinity,
    child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent[700]),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r))),
        ),
        onPressed: () {
          Navigator.pushNamed(context, tdPageName);
        },
        child: Text(
          tdButtonName,
          style: TextStyle(fontSize: 20.sp),
        )));

Widget ganderDropDown() => DropdownButtonFormField<String>(
    decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.access_time_filled,
          color: Colors.black,
          size: 24.sp,
        ),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.r)))),
    value: 'Male',
    items: <String>['Male', 'Female'].map((String value) {
      return DropdownMenuItem<String>(value: value, child: Text(value));
    }).toList(),
    onChanged: (_) {});

Widget ageDropDown() => DropdownButtonFormField<String>(
    decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.access_time_filled,
          color: Colors.black,
          size: 24.sp,
        ),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.r)))),
    value: '27 Years',
    items: <String>['27 Years', '30 Years'].map((String value) {
      return DropdownMenuItem<String>(value: value, child: Text(value));
    }).toList(),
    onChanged: (_) {});

Widget pdTextField({required String pdHintText}) => SizedBox(
      height: 50.h,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
            hintText: pdHintText,
            hintStyle: TextStyle(fontSize: 12.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 1.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 1.w),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
      ),
    );

Widget longTextBox({
  required String pdHintText,
  int ltMaxLine = 10,
  double ltHeight = 200,
}) =>
    SizedBox(
      height: ltHeight.h,
      width: double.infinity,
      child: TextFormField(
        maxLines: ltMaxLine,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
            hintText: pdHintText,
            hintStyle: TextStyle(fontSize: 12.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 1.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.grey, width: 1.w),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
      ),
    );
