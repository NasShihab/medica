import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/09_DoctorsProfile/Appointment/C_Patient_Details/Patient_Details_Widget.dart';
import 'package:medica/pages/Z_other/myFullCustomButton.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';
import '../H_Enter_Pin/Enter_Pin_Widget.dart';
import '../a_Book_Appointment/Book_Appointment_Widget.dart';

class Reschedule_Appointment extends StatelessWidget {
  const Reschedule_Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: mycustomAppBar(
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
            long_Text_Box(pdHintText: 'Other'),
          ],
        ),
      ),
      floatingActionButton: myFullCustomButton(
        myButtonTitle: 'Next',
        myOnPressed: () {
          Navigator.pushNamed(context, '/Reschedule_Appointment2');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //floatingActionButton: mycustom_button_Blue(context, btname: 'Next', pageName: '/Reschedule_Appointment2'),
    );
  }
}

class Reschedule_Appointment2 extends StatelessWidget {
  const Reschedule_Appointment2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mycustomAppBar(
        context,
        appBarTitle: 'Reschedule Appoinment',
        actionBarIcons: SizedBox.shrink(),
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
                    hoursTime(book_time: '09:00 AM'),
                    hoursTime(book_time: '09:30 AM'),
                    hoursTime(book_time: '10:00 AM'),
                  ],
                ),
                height15(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    hoursTime(book_time: '10:30 AM'),
                    hoursTime(book_time: '11:00 AM'),
                    hoursTime(book_time: '11:30 AM'),
                  ],
                ),
                height15(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    hoursTime(book_time: '12:00 PM'),
                    hoursTime(book_time: '12:30 PM'),
                    hoursTime(book_time: '15:00 PM'),
                  ],
                ),
                height15(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    hoursTime(book_time: '15:30 PM'),
                    hoursTime(book_time: '16:00 PM'),
                    hoursTime(book_time: '16:30 PM'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        myButtonTitle: 'Submit',
        myOnPressed: () {
          showDialog(context: context, builder: (context) => success_AlertDialog(context, message: 'Congrats'));
        },
      ),
    );
  }
}
