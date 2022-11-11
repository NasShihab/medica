import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../reusable_widget/border_text_custom.dart';
import '../reusable_widget/circle_avatar_icon.dart';
import '../reusable_widget/list_tile.dart';
import '../reusable_widget/sized_box.dart';


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
