import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myFullCustomButton.dart';
import '../../../Z_other/myBorderText.dart';
import '../../../Z_other/myCircleAvatarIcon.dart';
import '../../../Z_other/myColor.dart';
import '../../../Z_other/myCustom_ListTile.dart';
import '../../../Z_other/mySizedBox.dart';

class Upcoming_Appointment extends StatelessWidget {
  const Upcoming_Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return myCustom_ListTile(
          myChart_Title: Row(
            children: [
              Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height10(),
                  Text('Alexa D Mex', style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold)),
                  height10(),
                  Row(
                    children: [
                      Text('Messaging  -', style: TextStyle(fontSize: 16.sp)),
                      width10(),
                      myBorderText(my_text: 'Upcoming'),
                    ],
                  ),
                  height10(),
                  Text('20 Feb 2022  |  10:00 PM', style: TextStyle(fontSize: 16.sp)),
                ],
              ),
              width10(),
              Flexible(
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/Message_Appointment');
                  },
                  child: myCircleAvatarIcon(myIcon: Icons.message),
                ),
              ),
            ],
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
                        myOnPressed: () {
                          Navigator.pushNamed(context, '/Canceled_Reason');
                        },
                      ),
                    ),
                    Expanded(
                      child: myFullCustomButton(
                        myButtonFontSize: 16,
                        myButtonTitle: 'Reschedule',
                        myButtonHeight: 35,
                        myOnPressed: () {
                          Navigator.pushNamed(context, '/Reschedule_Appointment');
                        },
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
