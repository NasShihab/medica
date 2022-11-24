import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/dashboard/doctors_profile/book_appointment/select_package/patient_details/patient_details_widget.dart';
import '../doctors_profile/book_appointment/book_appointment_widget.dart';
import '../dashboard_widget.dart';
import '../../reusable_widget/sized_box.dart';
import '../../reusable_widget/appbar_custom.dart';
import '../../reusable_widget/button_custom.dart';

class RescheduleAppointment extends StatelessWidget {
  const RescheduleAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppBar(
        context,
        appBarTitle: 'Reschedule Appoinment',
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
      floatingActionButton: myFullCustomButton(
        buttonTitle: 'Next',
        myOnPressed: () {
          Navigator.pushNamed(context, '/Reschedule_Appointment2');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class RescheduleAppointment2 extends StatelessWidget {
  const RescheduleAppointment2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        appBarTitle: 'Reschedule Appoinment',
        actionBarIcons: const SizedBox.shrink(),
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Date',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                height10(),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18.r)),
                    color: Colors.indigo[100],
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: CalendarDatePicker(
                      initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime.now(), onDateChanged: (newDate) {}),
                ),
                height20(),
                Text(
                  'Select Hour',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                height20(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    hoursTime(bookingTime: '09:00 AM'),
                    hoursTime(bookingTime: '09:30 AM'),
                    hoursTime(bookingTime: '10:00 AM'),
                  ],
                ),
                height15(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    hoursTime(bookingTime: '10:30 AM'),
                    hoursTime(bookingTime: '11:00 AM'),
                    hoursTime(bookingTime: '11:30 AM'),
                  ],
                ),
                height15(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    hoursTime(bookingTime: '12:00 PM'),
                    hoursTime(bookingTime: '12:30 PM'),
                    hoursTime(bookingTime: '15:00 PM'),
                  ],
                ),
                height15(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    hoursTime(bookingTime: '15:30 PM'),
                    hoursTime(bookingTime: '16:00 PM'),
                    hoursTime(bookingTime: '16:30 PM'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        buttonTitle: 'Submit',
        myOnPressed: () {
          showDialog(context: context, builder: (context) => successAlertDialog(context, message: 'Congrats'));
        },
      ),
    );
  }
}
