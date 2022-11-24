import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/dashboard/doctors_profile/doctors_profile.dart';
import 'package:medica/dashboard/home_page.dart';
import 'package:medica/dashboard/appointment_view/appointment_view.dart';
import 'package:medica/dashboard/notification.dart';
import 'appointment_view/consultation/doctor_reviews_page.dart';
import '../reusable_widget/color_custom.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  final List<Widget> screens = [
    const HomePage(),
    const MyAppointmentView(),
    const DoctorReviewPage(),
    const NotificationPage(),
    const DoctorsProfile(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_outlined,
                color: myPinkAccent,
                size: 30.sp,
              )),
          BottomNavigationBarItem(
              label: 'Appointment',
              icon: Icon(
                Icons.calendar_month_outlined,
                color: myPinkAccent,
                size: 30.sp,
              )),
          BottomNavigationBarItem(
              label: 'History',
              icon: Icon(
                Icons.history_edu_outlined,
                color: myPinkAccent,
                size: 30.sp,
              )),
          BottomNavigationBarItem(
              label: 'Articles',
              icon: Icon(
                Icons.article_outlined,
                color: myPinkAccent,
                size: 30.sp,
              )),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.person_outline,
                color: myPinkAccent,
                size: 30.sp,
              )),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
