import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages_widget/doctor_speciality.dart';
import 'package:medica/pages_widget/top_doctors_category.dart';
import 'package:medica/pages_widget/search_filter.dart';
import 'package:medica/dashboard/slide_show.dart';
import '../reusable_widget/color_custom.dart';
import '../reusable_widget/sized_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //bottomNavigationBar:  const BottomNavigationBarPage(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/My_Appointment');
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset('assets/images/profile2.png'),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning',
                              style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                            ),
                            Text(
                              'Andrew Morgan',
                              style: TextStyle(fontSize: 15.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.pushNamed(context, '/notification');
                          },
                          icon: Icon(
                            Icons.notification_add_outlined,
                            size: 30.sp,
                          )),
                      IconButton(
                          alignment: Alignment.center,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.pushNamed(context, '/favorite_doctors');
                          },
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            size: 30.sp,
                          )),
                    ],
                  ),
                ],
              ),
              height10(),
              CupertinoSearchTextField(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                onSuffixTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30.r),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return const SearchFilter();
                      });
                },
                suffixIcon: Icon(
                  Icons.filter_list,
                  color: myPinkAccent,
                  size: 25.sp,
                ),
                suffixMode: OverlayVisibilityMode.always,
                prefixIcon: Icon(
                  Icons.search,
                  color: myPinkAccent,
                  size: 25.sp,
                ),
              ),
              height20(),
              //Todo - Add Indicatior for SLide Image
              const SlideShow(),
              height20(),
              const DoctorSpeciality(),
              height30(),
              const TopDoctorsCategory(),
            ],
          ),
        ),
      ),
    );
  }
}
