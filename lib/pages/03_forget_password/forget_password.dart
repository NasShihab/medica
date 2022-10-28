import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';
import '../Z_other/myFullCustomButton.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mycustomAppBar(context, appBarTitle: 'Forget Your Password'),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: CircleAvatar(
                radius: 120.r,
                backgroundColor: Colors.transparent,
                child: Image.asset('assets/images/phone_security.png'),
              ),
            ),
            Flexible(
              child: Text('Select which contact details should we use to reset your password',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 18.sp)),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.message_rounded,
                      size: 40.sp,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'via SMS',
                          style: TextStyle(fontSize: 18.sp, color: Colors.grey),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "017xxxxx256",
                          style: TextStyle(fontSize: 18.sp, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 40.r,
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.mail,
                    size: 40.sp,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(width: 10.w),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'via Email',
                        style: TextStyle(fontSize: 18.sp, color: Colors.grey),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "nas.sh***@gmail.com",
                        style: TextStyle(fontSize: 18.sp, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            height20(),
          ],
        ),
      )),
      floatingActionButton: myFullCustomButton(
        myButtonTitle: 'Next',
        myOnPressed: () {
          Navigator.pushNamed(context, '/HomePage');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
