import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Z_other/mySizedBox.dart';
import 'Patient_Details_Widget.dart';

class Patient_Details extends StatelessWidget {
  const Patient_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: pdNextButton(context, tdButtonName: 'Next', tdPageName: '/Payments_Page'),
      appBar: AppBar(
        actions: [
          IconButton(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.expand_circle_down_outlined,
                color: Colors.black,
                size: 30.sp,
              )),
        ],
        title: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            'Patient Details',
            style: TextStyle(fontSize: 24.sp, color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HomePage');
            },
            icon: Icon(
              Icons.arrow_back,
              size: 24.sp,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height10(),
            Text(
              'Full Name',
              style: TextStyle(fontSize: 20.sp),
            ),
            height20(),
            pdTextField(pdHintText: 'Antony Gomez'),
            height20(),
            Text(
              'Gender',
              style: TextStyle(fontSize: 20.sp),
            ),
            height20(),
            ganderDropDown(),
            height20(),
            Text(
              'Your Age',
              style: TextStyle(fontSize: 20.sp),
            ),
            height20(),
            age_DropDown(),
            height30(),
            Text(
              'Write your problem',
              style: TextStyle(fontSize: 20.sp),
            ),
            height20(),
            long_Text_Box(pdHintText: 'Hello Doctor, my problem is.............'),
          ],
        ),
      ),
    );
  }
}
