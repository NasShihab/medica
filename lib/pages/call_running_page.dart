import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../reusable_widget/sized_box.dart';
import '../reusable_widget/appbar_custom.dart';

class CallRunningPage extends StatelessWidget {
  const CallRunningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/call_image.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: customAppBar(context, appBarTitle: ''),
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
              child: Icon(Icons.mic, size: 30.sp, color: Colors.white),
            ),
            width10(),
            GestureDetector(
              onTap: (){
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
                '16:25 Min',
                style: TextStyle(color: Colors.white, fontSize: 22.sp),
              ),
              height50(),
              height50(),
              Text(
                'Audio record is active',
                style: TextStyle(color: Colors.white, fontSize: 22.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
