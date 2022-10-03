// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Z_other/myBorderText.dart';
import '../../../Z_other/myCircleAvatarIcon.dart';
import '../../../Z_other/myFullCustomButton.dart';
import '../../../Z_other/myColor.dart';
import '../../../Z_other/myCustom_ListTile.dart';
import '../../../Z_other/mySizedBox.dart';

class Completed_Appointment extends StatelessWidget {
  const Completed_Appointment({Key? key}) : super(key: key);

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
                      myBorderText(myBorderText_borderColor: Colors.green, my_text_color: Colors.green, my_text: 'Completed'),
                    ],
                  ),
                  height10(),
                  Text('20 Feb 2022  |  10:00 PM', style: TextStyle(fontSize: 16.sp)),
                ],
              ),
              width10(),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Calling_Consultation');
                  },
                  child: myCircleAvatarIcon(myIcon: Icons.call),
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
                        myButtonTitle: 'Book Again',
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
                        myButtonTitle: 'Leave a review',
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
