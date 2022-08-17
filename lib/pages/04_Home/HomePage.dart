import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/04_Home/DoctorSpeciality.dart';
import 'package:medica/pages/04_Home/SlideShow.dart';
import 'package:medica/pages/07_TopDoctors/TopDoctorsCategory.dart';
import 'package:medica/pages/Z_other/myColor.dart';
import '../Z_other/mySizedBox.dart';
import 'bottomNavigationBarPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const bottomNavigationBarPage(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                            style:
                                TextStyle(fontSize: 15.sp, color: Colors.grey),
                          ),
                          Text(
                            'Andrew Morgan',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ],
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
                suffixIcon: Icon(
                  Icons.filter_list,
                  color: myBlueAccent,
                ),
                suffixMode: OverlayVisibilityMode.always,
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
