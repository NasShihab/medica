import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Z_other/myFullCustomButton.dart';
import '../../../Z_other/myCuston_Appbar.dart';
import '../../../Z_other/mySizedBox.dart';
import '../C_Patient_Details/patient_details_widget.dart';
import '../H_Enter_Pin/Enter_Pin_Widget.dart';

class Canceled_Reason extends StatelessWidget {
  const Canceled_Reason({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: mycustomAppBar(
        context,
        appBarTitle: 'Cancel Appoinment',
        actionBarIcons: const SizedBox.shrink(),
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
            longTextBox(pdHintText: 'Other'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        myButtonTitle: 'Submit',
        myOnPressed: () {
          showDialog(
            context: context,
            builder: (context) => success_AlertDialog(context, message: 'Cancel Appointment Success'),
          );
        },
      ),
    );
  }
}
