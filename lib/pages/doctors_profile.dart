import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../pages_widget/doctor_profile_widget.dart';
import '../reusable_widget/sized_box.dart';
import '../reusable_widget/appbar.dart';
import '../reusable_widget/full_custom_button.dart';

class DoctorsProfile extends StatelessWidget {
  const DoctorsProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,
          appBarTitle: 'Doctor Profile',
          actionBarIcons: Row(
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
          child: Container(
            height: MediaQuery.of(context).size.height * .80,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  octorsProfileData(),
                  height10(),
                  Row(
                    children: [
                      doctorProfileIcon(dcCategory: 'Patients', dcicon: Icons.people, dcPoint: '500+'),
                      doctorProfileIcon(dcCategory: 'Years Experience', dcicon: Icons.medical_services_sharp, dcPoint: '10+'),
                      doctorProfileIcon(dcCategory: 'Ratings', dcicon: Icons.star, dcPoint: '4.5'),
                      doctorProfileIcon(dcCategory: 'Reviews', dcicon: Icons.mark_chat_read, dcPoint: '4989'),
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
                  doctorsReviewC(context),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        myOnPressed: () {
          Navigator.pushNamed(context, '/Book_Appointment');
        },
        buttonTitle: 'Book Appointment',
      ),
    );
  }
}
