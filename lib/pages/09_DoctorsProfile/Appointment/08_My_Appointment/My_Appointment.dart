import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/09_DoctorsProfile/Appointment/08_My_Appointment/Upcoming_Appointment.dart';
import 'Canceled_Appointment.dart';
import 'Completed_Appointment.dart';
import 'Tab_Bar.dart';

class My_Appointment extends StatelessWidget {
  const My_Appointment({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: myTabBar(
          context,
          appBarTitle2: 'My Appointment',
          action_Icons2: Row(
            children: [
              IconButton(
                  visualDensity:
                      VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(
                    Icons.search_sharp,
                    color: Colors.black,
                    size: 30.sp,
                  )),
              IconButton(
                  visualDensity:
                      VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                    size: 30.sp,
                  )),
            ],
          ),
          leadingIcon2: Icon(
            Icons.medical_services_sharp,
            color: Colors.blue[700],
            size: 24.sp,
          ),
        ),
        body: const TabBarView(children: [
          Upcoming_Appointment(),
          Completed_Appointment(),
          Canceled_Appointment(),
        ]),
      ),
    );
  }
}
