import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Z_other/myCuston_Appbar.dart';
import '../../../../Z_other/mySizedBox.dart';

class Video_Runnig_Page extends StatelessWidget {
  const Video_Runnig_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/doctors/doctor3.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: mycustomAppBar(context, appBarTitle: ''),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40.r,
              backgroundColor: Colors.blueGrey,
              child: Icon(Icons.volume_up, size: 30.sp, color: Colors.white),
            ),
            width10(),
            CircleAvatar(
              radius: 40.r,
              backgroundColor: Colors.blueGrey,
              child: Icon(Icons.video_camera_back, size: 34.sp, color: Colors.white),
            ),
            width10(),
            CircleAvatar(
              radius: 40.r,
              backgroundColor: Colors.blueGrey,
              child: Icon(Icons.mic, size: 30.sp, color: Colors.white),
            ),
            width10(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/Consultation_Ended');
              },
              child: CircleAvatar(
                radius: 40.r,
                backgroundColor: Colors.red[700],
                child: Icon(Icons.add_ic_call, size: 30.sp, color: Colors.white),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            alignment: Alignment(1.w, 0.9.h),
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '16:25 mins',
                          style: TextStyle(color: Colors.white, fontSize: 18.sp),
                        ),
                      ],
                    ),
                    Text(
                      'Video Recording is active',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
              // Image(
              //   height: 400.h,
              //   width: 100.w,
              //   image: const AssetImage(
              //     'assets/images/people.jpg',
              //   ),
              // ),
              Container(
                height: 220.h,
                width: 110.w,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/people.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15.r)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
