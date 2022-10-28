import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/custom_color.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(

            label: 'Home', icon: Icon(Icons.home_outlined, color: myBlueAccent, size: 30.sp,)),
        BottomNavigationBarItem(
            label: 'Appointment', icon: Icon(Icons.calendar_month_outlined, color: myBlueAccent, size: 30.sp,)),
        BottomNavigationBarItem(
            label: 'History', icon: Icon(Icons.history_edu_outlined, color: myBlueAccent, size: 30.sp,)),
        BottomNavigationBarItem(
            label: 'Articles', icon: Icon(Icons.article_outlined, color: myBlueAccent, size: 30.sp,)),
        BottomNavigationBarItem(
            label: 'Profile', icon: Icon(Icons.person_outline, color: myBlueAccent, size: 30.sp,)),
      ],
    );
  }
}
