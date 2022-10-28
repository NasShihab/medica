import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../reusable_widget/custom_color.dart';
import 'upcoming_appointment.dart';
import 'canceled_appointment.dart';
import 'completed_appointment.dart';
import '../pages_widget/tab_bar.dart';

class MyAppointmentView extends StatelessWidget {
  const MyAppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: myTabBar(context,
            appBarTitle2: 'My Appointment',
            actionIconBar: Row(
              children: [
                IconButton(
                    visualDensity: VisualDensity.compact,
                    onPressed: () {},
                    icon: Icon(
                      Icons.search_sharp,
                      color: Colors.black,
                      size: 30.sp,
                    )),
                IconButton(
                    visualDensity: VisualDensity.compact,
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.black,
                      size: 30.sp,
                    )),
              ],
            ),
            leadingIcon2: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/welcome');
              },
              icon: Icon(
                Icons.medical_services_sharp,
                color: myBlueAccent,
                size: 24.sp,
              ),
            )),
        body:  const TabBarView(children: [
          UpcomingAppointment(),
          CompletedAppointment(),
          CanceledAppointment(),
        ]),
      ),
    );
  }
}
