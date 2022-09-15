import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';

import '../../../Z_other/custom_Button.dart';

Widget success_AlertDialog(
        BuildContext context) =>
    AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(30.r))),
      content: SizedBox(
        height: 500.h,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: CircleAvatar(
                radius: 120.r,
                backgroundColor:
                    Colors.transparent,
                backgroundImage: const AssetImage(
                    'assets/images/profile2.png'),
              ),
            ),
            Flexible(
              child: Text(
                'Congratulations',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                    color:
                        Colors.blueAccent[700]),
              ),
            ),
            Flexible(
              child: Text(
                'Appointment Successfully booked. You will receive a notification and the doctor you selected will contact you',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.sp),
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  Flexible(
                    child: mycustom_button_Blue(
                        context,
                        pageName: '/w',
                        btname:
                            'View Appointment'),
                  ),
                  height10(),
                  Flexible(
                      child:
                          mycustom_button_Accent(
                              context,
                              bttname: 'Cancel',
                              btt_pageName: ''))
                ],
              ),
            ),
          ],
        ),
      ),
    );

Widget errorAlert_Widget(
    BuildContext context) =>
    AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(30.r))),
      content: SizedBox(
        height: 500.h,
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: CircleAvatar(
                radius: 120.r,
                backgroundColor:
                Colors.transparent,
                backgroundImage: const AssetImage(
                    'assets/images/profile2.png'),
              ),
            ),
            Flexible(
              child: Text(
                'Ops Failed',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                    color:
                    Colors.red),
              ),
            ),
            Flexible(
              child: Text(
                'Internet Problem !dfdddddddsdsdsdsdsddddd!!',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.sp),
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  Flexible(
                    child: mycustom_ShowDialogbutton_Blue(
                        context,
                        bttttname: 'Try Again',
                        myCCustomDialog: success_AlertDialog(context)),
                  ),
                  height10(),
                  Flexible(
                      child:
                      mycustom_button_Accent(
                          context,
                          bttname: 'Cancel',
                          btt_pageName: ''))
                ],
              ),
            ),
          ],
        ),
      ),
    );
