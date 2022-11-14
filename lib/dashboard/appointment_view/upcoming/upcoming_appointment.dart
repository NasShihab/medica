import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../reusable_widget/border_text_custom.dart';
import '../../../reusable_widget/circle_avatar_icon.dart';
import '../../../reusable_widget/color_custom.dart';
import '../../../reusable_widget/list_tile.dart';
import '../../../reusable_widget/sized_box.dart';
import '../../../reusable_widget/button_custom.dart';

class UpcomingAppointment extends StatelessWidget {
  const UpcomingAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return customListTile(
          myChartTitle: Row(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Alexa D Mex', style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text('Messaging  -', style: TextStyle(fontSize: 16.sp)),
                        width10(),
                        customBorderText(myText: 'Upcoming'),
                      ],
                    ),
                    Text('20 Feb 2022  |  10:00 PM', style: TextStyle(fontSize: 16.sp)),
                  ],
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Messaging_Consultation');
                  },
                  child: customCircleAvatarIcon(
                    iconSize: 30,
                    myIcon: Icons.message,
                  ),
                ),
              ),
            ],
          ),
          myChartBottom: Column(
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
                        buttonTitle: 'Cancel Appointment',
                        buttonFontSize: 16,
                        buttonForgroundColor: myPinkAccent,
                        buttonBackgroundColor: Colors.white,
                        buttonHeight: 35,
                        myOnPressed: () {
                          Navigator.pushNamed(context, '/Canceled_Reason');
                        },
                      ),
                    ),
                    Expanded(
                      child: myFullCustomButton(
                        buttonFontSize: 16,
                        buttonTitle: 'Reschedule',
                        buttonHeight: 35,
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
