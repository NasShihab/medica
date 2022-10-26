import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myColor.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';

import '../../../Z_other/myFullCustomButton.dart';

Widget success_AlertDialog(BuildContext context, {required String message}) => AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.r))),
    content: SizedBox(
      height: MediaQuery.of(context).size.height * .55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: CircleAvatar(
              radius: 120.r,
              backgroundColor: Colors.transparent,
              backgroundImage: const AssetImage('assets/images/profile2.png'),
            ),
          ),
          Flexible(
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp, color: Colors.blueAccent[700]),
            ),
          ),
          Flexible(
            child: Text(
              'Appointment Successfully booked. You will receive a notification and the doctor you selected will contact you',
              style: TextStyle(color: Colors.grey, fontSize: 18.sp),
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
            child: Column(
              children: [
                Flexible(
                  child: myFullCustomButton(
                    myButtonTitle: 'View Appointment',
                    myOnPressed: () {
                      Navigator.pushNamed(context, '/My_Appointment');
                    },
                  ),
                  // child: mycustom_button_Blue(context, pageName: '/My_Appointment', btname: 'View Appointment'),
                ),
                height10(),
                Flexible(
                  child: myFullCustomButton(
                    myButtonBackgroundColor: Colors.lightBlue[100],
                    myButtonForgroundColor: myBlueAccent,
                    myButtonTitle: 'Cancel',
                    myOnPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  //   child: mycustom_button_Blue(context, pageName: '/My_Appointment', btname: 'View Appointment'),
                ),
                //Flexible(child: mycustom_button_Accent(context, bttname: 'Cancel', btt_pageName: ''))
              ],
            ),
          ),
        ],
      ),
    ));

Widget errorAlert_Widget(BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.r))),
      content: SizedBox(
        height: MediaQuery.of(context).size.height * .55,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: CircleAvatar(
                radius: 120.r,
                backgroundColor: Colors.transparent,
                backgroundImage: const AssetImage('assets/images/profile2.png'),
              ),
            ),
            Flexible(
              child: Text(
                'Ops Failed',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp, color: Colors.red),
              ),
            ),
            Flexible(
              child: Text(
                'Internet Problem !dfdddddddsdsdsdsdsddddd!!',
                style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  Flexible(
                    child: myFullCustomButton(
                      myButtonTitle: 'Try Again',
                      myOnPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => success_AlertDialog(context, message: 'Congratulations'),
                        );
                      },
                    ),
                  ),
                  height10(),
                  Flexible(
                      child: myFullCustomButton(
                    myButtonTitle: 'Cancel',
                    myButtonForgroundColor: myBlueAccent,
                    myButtonBackgroundColor: Colors.lightBlue[100],
                    myButtonBorderColor: Colors.transparent,
                    myOnPressed: () {},
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
