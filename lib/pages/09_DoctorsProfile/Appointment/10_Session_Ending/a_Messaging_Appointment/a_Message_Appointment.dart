import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/09_DoctorsProfile/Appointment/02_Select_Package/Select_Package_Widget.dart';
import 'package:medica/pages/Z_other/myCustom_ListTile.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';
import 'package:medica/pages/Z_other/myFullCustomButton.dart';

import '../../../../Z_other/mySizedBox.dart';

class Message_Appointment extends StatelessWidget {
  const Message_Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: mycustomAppBar(context,
          actionBarIcons: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, size: 24.sp, color: Colors.black),
          ),
          appBarTitle: 'My Appointment (Message)'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myCustom_ListTile(
              myChart_Title: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
            Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: patientFormList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${patientFormList[index].ptName}',
                                      style: TextStyle(fontSize: 18.sp, color: Colors.grey[700]),
                                    ),
                                    Text(
                                      ':',
                                      style: TextStyle(fontSize: 18.sp, color: Colors.grey[700]),
                                    ),
                                  ],
                                ),
                              ),
                              width10(),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        '${patientFormList[index].patientInfo}',
                                        maxLines: 3,
                                        style: TextStyle(fontSize: 18.sp, color: Colors.grey[700]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          height10(),
                        ],
                      );
                    }),
              ],
            ),
            height20(),
            Text(
              'Your Package',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            height20(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: CustomIcon_Select_Package(
                spText1: 'Message',
                spText2: 'Chat with doctor',
                spRate: 21,
                spMinutes: '(paid)',
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        myButtonFontSize: 18,
        myButtonTitle: 'Message (Star at 16:00 PM)',
        myOnPressed: () {
          Navigator.pushNamed(context,'/Chat_Page');
        },
      ),
    );
  }
}

class patientForm {
  final String ptName;
  final String patientInfo;

  patientForm(
    this.ptName,
    this.patientInfo,
  );
}

class Class {}

List patientFormList = [
  patientForm('Full Name', 'Alexa Bliss'),
  patientForm('Gander', 'Female'),
  patientForm('Age', '26'),
  patientForm('Problem', 'Rame kiuy sifhlRkiuy sifhlRkiuy sifhlR ame kiuy sifhlRame kiuy sifhl'),
];
