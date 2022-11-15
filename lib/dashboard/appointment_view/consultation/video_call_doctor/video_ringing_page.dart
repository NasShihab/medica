import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../reusable_widget/sized_box.dart';

class VideoRingingPage extends StatelessWidget {
  const VideoRingingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/doctors/doctor3.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/Video_Runnig_Page');
              },
              child: CircleAvatar(
                radius: 40.r,
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.volume_up, size: 34.sp, color: Colors.white),
              ),
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
              child: Icon(Icons.mic, size: 34.sp, color: Colors.white),
            ),
            width10(),
            CircleAvatar(
              radius: 40.r,
              backgroundColor: Colors.red[700],
              child: Icon(Icons.add_ic_call, size: 34.sp, color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200.h,
                    width: 200.w,
                    child: CircleAvatar(
                      radius: 150.r,
                      backgroundImage: const AssetImage('assets/images/doctors/doctor3.png'),
                    ),
                  ),
                ],
              ),
              height30(),
              Text(
                'Doctor Jenny Watson',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 32.sp),
              ),
              height30(),
              Text(
                'Ringing',
                style: TextStyle(color: Colors.white, fontSize: 22.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
