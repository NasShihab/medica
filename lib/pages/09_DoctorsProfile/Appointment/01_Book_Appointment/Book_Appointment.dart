import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/custom_Button.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';
import '../../../Z_other/myCuston_Appbar.dart';
import 'Book_Appointment_Widget.dart';

class Book_Appointment extends StatelessWidget {
  const Book_Appointment({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      resizeToAvoidBottomInset: false,
      appBar: mycustomAppBar(context,
          appBarTitle: 'Book Appointment',
          action_Icons: const SizedBox.shrink(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 20.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Text(
                'Select Date',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
              height10(),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(18.r)),
                  color: Colors.indigo[100],
                  border: Border.all(
                      color: Colors.transparent),
                ),
                child: CalendarDatePicker(
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now(),
                    onDateChanged: (newDate) {}),
              ),
              height20(),
              Text(
                'Select Hour',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
              height20(),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  hoursTime(
                      book_time: '09:00 AM'),
                  hoursTime(
                      book_time: '09:30 AM'),
                  hoursTime(
                      book_time: '10:00 AM'),
                ],
              ),
              height15(),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  hoursTime(
                      book_time: '10:30 AM'),
                  hoursTime(
                      book_time: '11:00 AM'),
                  hoursTime(
                      book_time: '11:30 AM'),
                ],
              ),
              height15(),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  hoursTime(
                      book_time: '12:00 PM'),
                  hoursTime(
                      book_time: '12:30 PM'),
                  hoursTime(
                      book_time: '15:00 PM'),
                ],
              ),
              height15(),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  hoursTime(
                      book_time: '15:30 PM'),
                  hoursTime(
                      book_time: '16:00 PM'),
                  hoursTime(
                      book_time: '16:30 PM'),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: mycustom_button_Blue(context, btname: 'Next', pageName: '/Select_Package'),
    );
  }
}
