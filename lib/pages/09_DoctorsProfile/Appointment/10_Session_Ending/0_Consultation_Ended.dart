import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myColor.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';
import 'package:medica/pages/Z_other/myFullCustomButton.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';

class Consultation_Ended extends StatelessWidget {
  const Consultation_Ended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: mycustomAppBar(context, appBarTitle: ''),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15.h),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: 200.h,
                width: 200.w,
                image: const AssetImage(
                  'assets/images/google.png',
                ),
              ),
              height20(),
              Text(
                'The Consultation Session has ended',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
              height20(),
              Text(
                'Recordings have been saved in activity',
                style: TextStyle(fontSize: 16.sp),
              ),
              height30(),
              SizedBox(
                height: 200.h,
                width: 200.w,
                child: CircleAvatar(
                  radius: 150.r,
                  backgroundImage: const AssetImage('assets/images/doctors/doctor3.png'),
                ),
              ),
              height20(),
              Text(
                'Doctor Alexa',
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
              height10(),
              Text(
                'Nurologist',
                style: TextStyle(fontSize: 20.sp),
              ),
              height10(),
              Text(
                'Ibne Sina Hospital',
                style: TextStyle(fontSize: 16.sp),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
        child: Row(
          children: [
            Flexible(
              child: myFullCustomButton(
                myButtonBackgroundColor: myBluegrey,
                myButtonBorderColor: myBluegrey,
                myButtonForgroundColor: myBlueAccent,
                myButtonFontSize: 18,
                myButtonTitle: 'Back to Home',
                myOnPressed: () {},
              ),
            ),
            Flexible(
              child: myFullCustomButton(
                myButtonTitle: 'Leave a Review',
                myButtonFontSize: 18,
                myOnPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
