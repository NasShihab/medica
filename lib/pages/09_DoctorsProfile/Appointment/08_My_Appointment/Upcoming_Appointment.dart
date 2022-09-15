import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Z_other/myColor.dart';
import '../../../Z_other/mySizedBox.dart';
import 'My_Appointment_Widget.dart';

class Upcoming_Appointment extends StatelessWidget {
  const Upcoming_Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          decoration: BoxDecoration(
              color: Colors.deepOrange[50], border: Border.all(color: Colors.transparent), borderRadius: BorderRadius.all(Radius.circular(10.r))),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10.r)),
                            child: Image.asset('assets/images/doctors/doctor1.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Dr Albert Maxwell',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Video Call  -'),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    border: Border.all(
                                        color: Colors.blue
                                    )
                                ),
                                child: const Text('Upcoming',
                                  style: TextStyle(color: Colors.blue),),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                            radius: 30.r,
                                            backgroundColor: Colors.blueGrey[100],
                                            child: Icon(
                                              Icons.call_sharp,
                                              size: 30.sp,
                                              color: myBlueAccent,
                                            )),
                                        height10(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Text('20 Feb 2020  |  10:00PM'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
                height: 2,
              ),
              height20(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Book_again_button(context, btname: 'Cancel Appointment', pageName: '/')),
                  Expanded(child: Leave_a_review_Button(context, btname: 'Reschedule', pageName: '/')),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
