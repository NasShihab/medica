import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Z_other/custom_color.dart';
import '../Z_other/custom_sized_box.dart';

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
            Text('See All', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: myBlueAccent)),
          ],
        ),
        height30(),
        Column(
          children: [
            Row(
              children: [
                docSpeciality(dcCategory: 'General', dcicon: Icons.generating_tokens),
                docSpeciality(dcCategory: 'Dentist', dcicon: Icons.table_bar_outlined),
                docSpeciality(dcCategory: 'Ophthalmologist', dcicon: Icons.accessible),
                docSpeciality(dcCategory: 'Nutrition', dcicon: Icons.food_bank_outlined),
              ],
            ),
            height20(),
            Row(
              children: [
                // myCircleAvatarIcon(
                //     myIconUnderTitile: Text(
                //       'Neurologist',
                //       overflow: TextOverflow.ellipsis,
                //       textAlign: TextAlign.center,
                //       style: TextStyle(fontSize: 16.sp),
                //     ),
                //     myIcon: Icons.back_hand_outlined),
                docSpeciality(dcCategory: 'Neurologist', dcicon: Icons.back_hand_outlined),
                docSpeciality(dcCategory: 'Pediatric', dcicon: Icons.adb_rounded),
                docSpeciality(dcCategory: 'Radiologist', dcicon: Icons.perm_camera_mic),
                docSpeciality(dcCategory: 'More', dcicon: Icons.more),
              ],
            ),
          ],
        ),
      ],
    );
  }

  //My Shortcut
  Widget docSpeciality({required var dcicon, required String dcCategory}) => Expanded(
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
