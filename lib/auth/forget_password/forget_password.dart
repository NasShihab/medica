import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/reusable_widget/color_custom.dart';
import '../../reusable_widget/appbar_custom.dart';
import '../../reusable_widget/button_custom.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forget Your Password')),
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
              flex: 3,
              child: Text(
                  'Select which contact details should we use to reset your password',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.sp)),
            ),
            Column(
              children: [
                myPointBar(
                  text1: 'Via SMS',
                  text2: '017*****259',
                  icon: Icons.message,
                ),
                const SizedBox(
                  height: 8,
                ),
                myPointBar(
                  text1: 'Via Mail',
                  text2: 'nas.s****2@gmail.com',
                  icon: Icons.mail,
                ),
              ],
            ),
          ],
        ),
      )),
      floatingActionButton: myFullCustomButton(
        buttonTitle: 'Next',
        myOnPressed: () {
          Navigator.pushNamed(context, '/OtpCode');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget myPointBar({
  required var icon,
  String text1 = 'Text 1',
  String text2 = 'Text 2',
}) =>
    Row(
      children: [
        CircleAvatar(
          radius: 40.r,
          backgroundColor: myGrey,
          child: Icon(
            icon,
            size: 32.sp,
            color: myPinkAccent,
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
                text1,
                style: TextStyle(fontSize: 18.sp, color: Colors.grey),
              ),
              SizedBox(width: 10.w),
              Text(
                text2,
                style: TextStyle(fontSize: 18.sp, color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
