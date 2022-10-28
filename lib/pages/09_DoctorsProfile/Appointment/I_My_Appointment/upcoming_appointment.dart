import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/full_custom_button.dart';
import '../../../Z_other/custom_border_text.dart';
import '../../../Z_other/custom_circle_avatar_icon.dart';
import '../../../Z_other/custom_color.dart';
import '../../../Z_other/custom_list_tile.dart';
import '../../../Z_other/custom_sized_box.dart';

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
                        buttonForgroundColor: myBlueAccent,
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
