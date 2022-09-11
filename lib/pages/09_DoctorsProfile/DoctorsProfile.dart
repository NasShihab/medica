// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';
import '../Z_other/myCuston_Appbar.dart';
import 'DoctorsProfileComponents/DoctorProfileCard.dart';

class DoctorsProfile extends StatelessWidget {
  const DoctorsProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mycustomAppBar(context,
          appBarTitle: 'Doctor Profile',
          action_Icons: Row(
            children: [
              IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_sharp,
                    color: Colors.black,
                    size: 30.sp,
                  )),
              IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                    size: 30.sp,
                  )),
            ],
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DoctorsProfileCard(),
                height10(),
                Row(
                  children: [
                    DoctorProfileIcon(
                        dcCategory: 'Patients',
                        dcicon: Icons.people,
                        dcPoint: '500+'),
                    DoctorProfileIcon(
                        dcCategory: 'Years Experience',
                        dcicon: Icons.medical_services_sharp,
                        dcPoint: '10+'),
                    DoctorProfileIcon(
                        dcCategory: 'Ratings',
                        dcicon: Icons.star,
                        dcPoint: '4.5'),
                    DoctorProfileIcon(
                        dcCategory: 'Reviews',
                        dcicon: Icons.mark_chat_read,
                        dcPoint: '4989'),
                  ],
                ),
                height20(),
                Text(
                  'About Me',
                  style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
                height10(),
                Text(
                  'Neurology is the branch of medicine concerned with the study and '
                  'treatment of disorders of the nervous system. The nervous'
                  'system is a complex system that regulates'
                  'and coordinates body activities.',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16.sp),
                ),
                height20(),
                Text(
                  'Working Time',
                  style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
                height10(),
                Text(
                  'Monday to Friday 08.00 AM - 20.00 PM',
                  style: TextStyle(fontSize: 16.sp),
                ),
                height20(),
                //Reviews
                DoctorsReviewC(context),
                SizedBox(
                    height: 60.h,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueAccent[700]),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(vertical: 14.h)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.r))),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/Book_Appointment');
                        },
                        child: Text(
                          'Book Appointment',
                          style: TextStyle(fontSize: 20.sp),
                        ))),
                height20(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
