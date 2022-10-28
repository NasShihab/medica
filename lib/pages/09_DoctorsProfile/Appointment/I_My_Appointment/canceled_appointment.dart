
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Z_other/custom_border_text.dart';
import '../../../Z_other/custom_circle_avatar_icon.dart';
import '../../../Z_other/custom_list_tile.dart';
import '../../../Z_other/custom_sized_box.dart';

class CanceledAppointment extends StatelessWidget {
  const CanceledAppointment({Key? key}) : super(key: key);

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
                        customBorderText(
                          myTextColor: Colors.red,
                          myBorderTextBorderColor: Colors.red,
                          myText: 'Canceled',
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
                  child: customCircleAvatarIcon(myIcon: Icons.video_camera_back),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
