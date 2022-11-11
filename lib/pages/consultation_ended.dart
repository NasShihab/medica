import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../reusable_widget/color_custom.dart';
import '../reusable_widget/sized_box.dart';
import '../reusable_widget/appbar_custom.dart';
import '../reusable_widget/button_custom.dart';

class ConsultationEnded extends StatelessWidget {
  const ConsultationEnded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, appBarTitle: 'Consultation Ended'),
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
                  'assets/images/asset1.png',
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
                buttonBackgroundColor: myGrey,
                buttonBorderColor: myGrey,
                buttonForgroundColor: myPinkAccent,
                buttonFontSize: 18,
                buttonTitle: 'Back to Home',
                myOnPressed: () {},
              ),
            ),
            Flexible(
              child: myFullCustomButton(
                buttonTitle: 'Leave a Review',
                buttonFontSize: 18,
                myOnPressed: () {
                  Navigator.pushNamed(context, '/Ended_Review');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
