import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Z_other/myFullCustomButton.dart';
import '../../../Z_other/myColor.dart';

Widget cancelAppointmentDialog(BuildContext context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.36,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Cancel Appointment',
              style: TextStyle(fontSize: 26.sp, color: Colors.red),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                'Are you sure? You want to cancel your appointment?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                'Only 50% fund will be refunded',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: myFullCustomButton(
                      myButtonTitle: 'Back',
                      myButtonHeight: 60,
                      myButtonWidth: double.infinity,
                      myButtonFontSize: 18,
                      myButtonFontWeight: FontWeight.normal,
                      myButtonForgroundColor: myBlueAccent,
                      myButtonBackgroundColor: Colors.grey,
                      myButtonBorderColor: Colors.white,
                      myButton_BorderRadius: 50,
                      myOnPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Expanded(
                  child: myFullCustomButton(
                      myButtonTitle: 'Yes, Continue',
                      myButtonHeight: 60,
                      myButtonWidth: double.infinity,
                      myButtonFontSize: 18,
                      myButtonFontWeight: FontWeight.normal,
                      myButtonForgroundColor: Colors.white,
                      myButtonBackgroundColor: myBlueAccent,
                      myButtonBorderColor: myBlueAccent,
                      myButton_BorderRadius: 50,
                      myOnPressed: () {
                        Navigator.pushNamed(context, '/Canceled_Reason');
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );

Widget cancelDialog(BuildContext context, {required String message}) => AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.r))),
    content: SizedBox(
      height: 500.h,
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
            child: Flexible(
              child: myFullCustomButton(
                  myButtonTitle: 'OK',
                  myButtonHeight: 60,
                  myButtonWidth: double.infinity,
                  myButtonFontSize: 20,
                  myButtonFontWeight: FontWeight.normal,
                  myButtonForgroundColor: Colors.white,
                  myButtonBackgroundColor: myBlueAccent,
                  myButtonBorderColor: myBlueAccent,
                  myButton_BorderRadius: 50,
                  myOnPressed: () {
                    Navigator.pushNamed(context, '/My_Appointment');
                  }),
            ),
          ),
        ],
      ),
    ));
