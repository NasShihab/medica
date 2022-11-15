import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../reusable_widget/color_custom.dart';
import '../reusable_widget/sized_box.dart';
import '../reusable_widget/toast_message.dart';

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
            Text(
              'See All',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: myPinkAccent),
            ),
          ],
        ),
        height30(),
        Column(
          children: [
            Row(
              children: [
                circleAvatarDc(title: 'Generals', icon: Icons.generating_tokens, toastMsg: 'General'),
                circleAvatarDc(title: 'Dentist', icon: Icons.table_bar_outlined, toastMsg: 'Dentist'),
                circleAvatarDc(title: 'Ophthalmologist', icon: Icons.accessible, toastMsg: 'Ophthalmologist'),
                circleAvatarDc(title: 'Nutrition', icon: Icons.food_bank_outlined, toastMsg: 'Nutrition'),
              ],
            ),
            height20(),
            Row(
              children: [
                circleAvatarDc(title: 'Neurologist', icon: Icons.back_hand_outlined, toastMsg: 'Neurologist'),
                circleAvatarDc(title: 'Pediatric', icon: Icons.adb_rounded, toastMsg: 'Pediatric'),
                circleAvatarDc(title: 'Radiologist', icon: Icons.perm_camera_mic, toastMsg: 'Radiologist'),
                circleAvatarDc(title: 'More', icon: Icons.more, toastMsg: 'More'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  //My Shortcut
  Widget circleAvatarDc({
    required var icon,
    required String title,
    required String toastMsg,
  }) =>
      Expanded(
        child: GestureDetector(
          onTap: () {
            toastMessage(message: toastMsg);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                CircleAvatar(
                    radius: 30.r,
                    backgroundColor: myGrey,
                    child: Icon(
                      icon,
                      size: 30.sp,
                      color: myPinkAccent,
                    )),
                height10(),
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
