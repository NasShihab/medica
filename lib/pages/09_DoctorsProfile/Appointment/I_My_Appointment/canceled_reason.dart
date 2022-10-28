import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Z_other/full_custom_button.dart';
import '../../../Z_other/custon_appbar.dart';
import '../../../Z_other/custom_sized_box.dart';
import '../C_Patient_Details/patient_details_widget.dart';
import '../H_Enter_Pin/booking_enter_pin_widget.dart';

class CanceledReason extends StatelessWidget {
  const CanceledReason({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppBar(
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
        buttonTitle: 'Submit',
        myOnPressed: () {
          showDialog(
            context: context,
            builder: (context) => successAlertDialog(context, message: 'Cancel Appointment Success'),
          );
        },
      ),
    );
  }
}
