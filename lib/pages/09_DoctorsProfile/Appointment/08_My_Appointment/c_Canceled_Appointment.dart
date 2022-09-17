// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Z_other/myCustom_ListTile.dart';

class Canceled_Appointment extends StatelessWidget {
  const Canceled_Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return myCustom_ListTile(
          myChart_AlertIcon: Icons.message,
          myChart_DoctorAlertText: Container(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: Colors.red),
            ),
            child: Text(
              'Canceled',
              style: TextStyle(color: Colors.red, fontSize: 14.sp),
            ),
          ),
        );
      },
    );
  }
}
