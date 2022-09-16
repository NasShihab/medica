import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/09_DoctorsProfile/Appointment/08_My_Appointment/z_Widgets.dart';
import 'package:medica/pages/Z_other/myColor.dart';

import '../../../Z_other/custom_Button.dart';
import '../../../Z_other/myCuston_Appbar.dart';
import '../../../Z_other/mySizedBox.dart';
import '../03_Patient_Details/Patient_Details_Widget.dart';

class Canceled_Reason extends StatelessWidget {
  const Canceled_Reason({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: mycustom_ShowDialogbutton_Blue(context,
          myColor: myBlueAccent,
          btFontSize: 20,
          btHight: 60,
          bttttname: 'Submit',
          myCCustomDialog: cancel_dialog(context, message: 'Cancel Appointment Success')),
      resizeToAvoidBottomInset: false,
      appBar: mycustomAppBar(
        context,
        appBarTitle: 'Cancel Appoinment',
        action_Icons: SizedBox.shrink(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Reason For Reschedule Change', style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
            height10(),
            Row(
              children: [
                Radio(value: 1, groupValue: 'ss', onChanged: (index) {}),
                Text('I am having a schedule clash', style: TextStyle(fontSize: 18.sp)),
              ],
            ),
            Row(
              children: [
                Radio(value: 1, groupValue: 'ss', onChanged: (index) {}),
                Text('I am having a schedule clash', style: TextStyle(fontSize: 18.sp)),
              ],
            ),
            Row(
              children: [
                Radio(value: 1, groupValue: 'ss', onChanged: (index) {}),
                Text('I am having a schedule clash', style: TextStyle(fontSize: 18.sp)),
              ],
            ),
            Row(
              children: [
                Radio(value: 1, groupValue: 'ss', onChanged: (index) {}),
                Text('I am having a schedule clash', style: TextStyle(fontSize: 18.sp)),
              ],
            ),
            Row(
              children: [
                Radio(value: 1, groupValue: 'ss', onChanged: (index) {}),
                Text('Others', style: TextStyle(fontSize: 18.sp)),
              ],
            ),
            height10(),
            long_Text_Box(pdHintText: 'Other'),
          ],
        ),
      ),
    );
  }
}
