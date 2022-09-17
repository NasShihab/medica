import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myFullCustomButton.dart';
import '../../../Z_other/myColor.dart';
import '../../../Z_other/myCustom_ListTile.dart';

class Upcoming_Appointment extends StatelessWidget {
  const Upcoming_Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return myCustom_ListTile(
          myChart_DoctorTitle: Text(
            'Alexa D Mex',
            style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
          ),
          myChart_DoctorAlertText: Container(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: Colors.blue),
            ),
            child: Text(
              'Upcomming',
              style: TextStyle(color: Colors.blue, fontSize: 14.sp),
            ),
          ),
          myChart_Bottom: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Divider(thickness: 2, height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: myFullCustomButton(
                        myButtonTitle: 'Cancel Appointment',
                        myButtonFontSize: 16,
                        myButtonForgroundColor: myBlueAccent,
                        myButtonBackgroundColor: Colors.white,
                        myButtonHeight: 35,
                        myOnPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: myFullCustomButton(
                        myButtonFontSize: 16,
                        myButtonTitle: 'Reschedule',
                        myButtonHeight: 35,
                        myOnPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
