// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Z_other/myBorderText.dart';
import '../../../Z_other/myCircleAvatarIcon.dart';
import '../../../Z_other/myCustom_ListTile.dart';
import '../../../Z_other/mySizedBox.dart';

class Canceled_Appointment extends StatelessWidget {
  const Canceled_Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return myCustom_ListTile(
          myChart_Title: Row(
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
                        myBorderText(
                          my_text_color: Colors.red,
                          myBorderText_borderColor: Colors.red,
                          my_text: 'Canceled',
                        ),
                      ],
                    ),
                    Text('20 Feb 2022  |  10:00 PM', style: TextStyle(fontSize: 16.sp)),
                  ],
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Video_Consultation');
                  },
                  child: myCircleAvatarIcon(myIcon: Icons.video_camera_back),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
