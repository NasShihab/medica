import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/reusable_widget/toast_message.dart';
import '../reusable_widget/color_custom.dart';
import '../reusable_widget/sized_box.dart';

class TopDoctorsCategory extends StatelessWidget {
  const TopDoctorsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Doctors',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/TopDoctors');
              },
              child: Text('See All', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: myPinkAccent)),
            ),
          ],
        ),
        height30(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              categoryButton(context, titleButton: 'All', toastMsg: 'All',),
              categoryButton(context, titleButton: 'Dentist', toastMsg: 'Dentist',),
              categoryButton(context, titleButton: 'Neurologist', toastMsg: 'Neurologist',),
              categoryButton(context, titleButton: 'Orthopedics', toastMsg: 'Orthopedics',),
              categoryButton(context, titleButton: 'General', toastMsg: 'General',),
            ],
          ),
        ),
      ],
    );
  }

}
Widget categoryButton(
    BuildContext context, {
      required String titleButton,
      required String toastMsg,
    }) =>
    SizedBox(
      height: 35.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.r),
                side: BorderSide(color: myPinkAccent),
              )),
              backgroundColor: MaterialStateProperty.all(Colors.white)),
          onPressed: () {
            toastMessage(message: toastMsg);
          },
          child: Text(
            titleButton,
            style: TextStyle(fontSize: 18.sp, color: myPinkAccent, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );