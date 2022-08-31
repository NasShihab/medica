import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';

import 'Book_Appointment_Model.dart';

class Book_Appointment extends StatelessWidget {
  const Book_Appointment({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.expand_circle_down_outlined,
                color: Colors.black,
                size: 30.sp,
              )),
        ],
        title: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            'Book Appointment',
            style: TextStyle(
                fontSize: 24.sp,
                color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(
                  context, '/HomePage');
            },
            icon: Icon(
              Icons.arrow_back,
              size: 24.sp,
              color: Colors.black,
            )),
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
              height20(),
              nextButton(context,
                  tdButtonName: 'Next',
                  tdPageName: '/Select_Package')
            ],
          ),
        ),
      ),
    );
  }
}
