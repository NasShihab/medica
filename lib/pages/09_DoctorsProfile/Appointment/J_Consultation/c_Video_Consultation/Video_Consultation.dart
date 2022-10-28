import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Z_other/custom_color.dart';
import '../../../../Z_other/custom_list_tile.dart';
import '../../../../Z_other/custon_appbar.dart';
import '../../../../Z_other/full_custom_button.dart';
import '../../../../Z_other/custom_sized_box.dart';
import '../../B_Select_Package/select_package_widget.dart';
import '../b_Calling_Consultation/calling_consultation.dart';

class Video_Consultation extends StatelessWidget {
  const Video_Consultation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,
          actionBarIcons: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, size: 24.sp, color: Colors.black),
          ),
          appBarTitle: 'Video Call Consultation'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customListTile(
              myChartLeading: Image.asset('assets/images/doctors/doctor1.jpg'),
              myChartTitle: SizedBox(
                height: MediaQuery.of(context).size.height * .12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Alexa De Mex',
                      style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    Divider(thickness: 2.sp),
                    Text('Nurologist', style: TextStyle(fontSize: 16.sp)),
                    Text('Ibne Sina Hospital', style: TextStyle(fontSize: 16.sp)),
                  ],
                ),
              ),
            ),
            height30(),
            Text(
              'Schedule Appointment',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            height10(),
            Text(
              'Today, December 22, 2022',
              style: TextStyle(fontSize: 18.sp, color: Colors.grey),
            ),
            height10(),
            Text(
              '16:00 - 16:30 PM (30 Minutes)',
              style: TextStyle(fontSize: 18.sp, color: Colors.grey),
            ),
            height30(),
            Text(
              'Patient Information',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            height20(),
            mypatientInfo(
              text1: 'Full Name',
              text2: Row(
                children: [
                  custom_Text_VC(myText: 'Morocco Nager'),
                ],
              ),
            ),
            mypatientInfo(
              text1: 'Gander',
              text2: Row(
                children: [
                  custom_Text_VC(myText: 'Female'),
                ],
              ),
            ),
            mypatientInfo(
              text1: 'Age',
              text2: Row(
                children: [
                  custom_Text_VC(myText: '26'),
                ],
              ),
            ),
            mypatientInfo(
              text1: 'Problem',
              text2: SizedBox(
                width: 230,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: customTextCC(
                        myText: 'So many prob  sd sd  sds lem',
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'view more',
                            style: TextStyle(fontSize: 18.sp, color: myBlueAccent),
                          )),
                    )
                  ],
                ),
              ),
            ),
            height20(),
            Text(
              'Your Package',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            height20(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: customSelectPackage(
                spicon: Icons.video_camera_back,
                spText1: 'Voice Call',
                spText2: 'Voice call with doctor',
                spRate: 21,
                spMinutes: '(paid)',
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        buttonFontSize: 18,
        buttonTitle: 'Video Call (Start at 16:00 PM)',
        myOnPressed: () {
          Navigator.pushNamed(context, '/Video_Ringing_Page');
        },
      ),
    );
  }
}

Text custom_Text_VC({
  required String myText,
}) =>
    Text(
      myText,
      style: TextStyle(
        fontSize: 18.sp,
        color: Colors.grey[700],
      ),
    );
