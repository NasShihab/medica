import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reusable_widget/custom_color.dart';
import '../reusable_widget/sized_box.dart';
import '../reusable_widget/full_custom_button.dart';

Widget successAlertDialog(BuildContext context, {required String message}) => AlertDialog(
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
                    buttonTitle: 'View Appointment',
                    myOnPressed: () {
                      Navigator.pushNamed(context, '/My_Appointment');
                    },
                  ),
                  // child: mycustom_button_Blue(context, pageName: '/My_Appointment', btname: 'View Appointment'),
                ),
                height10(),
                Flexible(
                  child: myFullCustomButton(
                    buttonBackgroundColor: Colors.lightBlue[100],
                    buttonForgroundColor: myBlueAccent,
                    buttonTitle: 'Cancel',
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

Widget errorAlertWidget(BuildContext context) => AlertDialog(
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
                      buttonTitle: 'Try Again',
                      myOnPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => successAlertDialog(context, message: 'Congratulations'),
                        );
                      },
                    ),
                  ),
                  height10(),
                  Flexible(
                      child: myFullCustomButton(
                    buttonTitle: 'Cancel',
                    buttonForgroundColor: myBlueAccent,
                    buttonBackgroundColor: Colors.lightBlue[100],
                    buttonBorderColor: Colors.transparent,
                    myOnPressed: () {},
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
