import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myColor.dart';
import 'package:medica/pages/Z_other/myCustom_ListTile.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';
import 'package:medica/pages/Z_other/myFullCustomButton.dart';
import '../../../../Z_other/mySizedBox.dart';
import '../../B_Select_Package/Select_Package_Widget.dart';
import '../b_Calling_Consultation/Calling_Consultation.dart';

class Messaging_Consultation extends StatelessWidget {
  const Messaging_Consultation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mycustomAppBar(context,
          actionBarIcons: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, size: 24.sp, color: Colors.black),
          ),
          appBarTitle: 'Messaging Consultation'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myCustom_ListTile(
              myChart_Leading: Image.asset('assets/images/doctors/doctor1.jpg'),
              myChart_Title: SizedBox(
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
                  custom_Text_MC(myText: 'Morocco Nager'),
                ],
              ),
            ),
            mypatientInfo(
              text1: 'Gander',
              text2: Row(
                children: [
                  custom_Text_CC(myText: 'Female'),
                ],
              ),
            ),
            mypatientInfo(
              text1: 'Age',
              text2: Row(
                children: [
                  custom_Text_CC(myText: '26'),
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
                      child: custom_Text_CC(
                        myText: 'So many prob  sd sd  sds lem',
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                          onTap: (){},
                          child: Text('view more', style: TextStyle(fontSize: 18.sp, color: myBlueAccent),)),
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
              child: CustomIcon_Select_Package(
                spicon: Icons.message,
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
        myButtonTitle: 'Message (Start at 16:00 PM)',
        myOnPressed: () {
          Navigator.pushNamed(context, '/Chat_Page');
        },
      ),
    );
  }
}


Text custom_Text_MC({
  required String myText,
}) =>
    Text(
      myText,
      style: TextStyle(
        fontSize: 18.sp,
        color: Colors.grey[700],
      ),
    );