import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myColor.dart';
import '../09_My_Appointment/a_Upcoming_Appointment.dart';
import 'c_Canceled_Appointment.dart';
import 'b_Completed_Appointment.dart';
import 'Tab_Bar.dart';

class My_Appointment extends StatelessWidget {
  const My_Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: myTabBar(context,
            appBarTitle2: 'My Appointment',
            action_IconBar: Row(
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
          Upcoming_Appointment(),
          Completed_Appointment(),
          Canceled_Appointment(),
        ]),
      ),
    );
  }
}
