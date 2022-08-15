import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Z_other/myColor.dart';
import '../Z_other/mySizedBox.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Doctor Speciality',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
            Text('See All',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: myBlueAccent)),
          ],
        ),
        height20(),
        Column(
          children: [
            Row(
              children: [
                DocSpeciality(
                    dcCategory: 'General', dcicon: Icons.generating_tokens),
                DocSpeciality(
                    dcCategory: 'Dentist', dcicon: Icons.table_bar_outlined),
                DocSpeciality(
                    dcCategory: 'Ophthalmologist', dcicon: Icons.accessible),
                DocSpeciality(
                    dcCategory: 'Nutrition', dcicon: Icons.food_bank_outlined),
              ],
            ),
            height20(),
            Row(
              children: [
                DocSpeciality(
                    dcCategory: 'Neurologist', dcicon: Icons.back_hand_outlined),
                DocSpeciality(
                    dcCategory: 'Pediatric', dcicon: Icons.adb_rounded),
                DocSpeciality(
                    dcCategory: 'Radiologist', dcicon: Icons.perm_camera_mic),
                DocSpeciality(
                    dcCategory: 'More', dcicon: Icons.more),
              ],
            ),
          ],
        ),
      ],
    );
  }

  //My Shortcut
  Widget DocSpeciality({required var dcicon, required String dcCategory}) =>
      Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              CircleAvatar(
                  radius: 30.r,
                  backgroundColor: Colors.blueGrey[100],
                  child: Icon(
                    dcicon,
                    size: 30.sp,
                    color: myBlueAccent,
                  )),
              height10(),
              Text(
                dcCategory,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp),
              )
            ],
          ),
        ),
      );
}
