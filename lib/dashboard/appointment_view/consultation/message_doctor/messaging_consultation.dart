import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../doctors_profile/book_appointment/select_package/select_package_widget.dart';
import '../../../../reusable_widget/appbar_custom.dart';
import '../../../../reusable_widget/button_custom.dart';
import '../../../../reusable_widget/color_custom.dart';
import '../../../../reusable_widget/list_tile.dart';
import '../../../../reusable_widget/sized_box.dart';
import '../call_doctor/calling_consultation.dart';

class MessagingConsultation extends StatelessWidget {
  const MessagingConsultation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,
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
                  customtextMessegingConsultation(myText: 'Morocco Nager'),
                ],
              ),
            ),
            mypatientInfo(
              text1: 'Gander',
              text2: Row(
                children: [
                  customTextCC(myText: 'Female'),
                ],
              ),
            ),
            mypatientInfo(
              text1: 'Age',
              text2: Row(
                children: [
                  customTextCC(myText: '26'),
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
                            style: TextStyle(fontSize: 18.sp, color: myPinkAccent),
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
        buttonFontSize: 18,
        buttonTitle: 'Message (Start at 16:00 PM)',
        myOnPressed: () {
          Navigator.pushNamed(context, '/Chat_Page');
        },
      ),
    );
  }
}

Text customtextMessegingConsultation({
  required String myText,
}) =>
    Text(
      myText,
      style: TextStyle(
        fontSize: 18.sp,
        color: Colors.grey[700],
      ),
    );
