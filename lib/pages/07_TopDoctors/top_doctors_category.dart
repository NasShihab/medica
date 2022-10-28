import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/custom_sized_box.dart';
import '../Z_other/custom_color.dart';

class TopDoctorsCategory extends StatelessWidget {
  const TopDoctorsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Doctors',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/TopDoctors');
              },
              child: Text('See All',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: myBlueAccent)),
            ),
          ],
        ),
        height30(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              topDoctorsButton(context,
                  tdButtonName: 'All', tdPageName: '/login'),
              topDoctorsButton(context,
                  tdButtonName: 'Dentist', tdPageName: '/login'),
              topDoctorsButton(context,
                  tdButtonName: 'Neurologist', tdPageName: '/login'),
              topDoctorsButton(context,
                  tdButtonName: 'Orthopedics', tdPageName: '/login'),
              topDoctorsButton(context,
                  tdButtonName: 'General', tdPageName: '/login'),
            ],
          ),
        ),
      ],
    );
  }

  Widget topDoctorsButton(BuildContext context,
          {required String tdButtonName, required String tdPageName}) =>
      SizedBox(
        height: 35.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.r),
                  side: const BorderSide(color: Colors.blue),
                )),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {
              Navigator.pushNamed(context, tdPageName);
            },
            child: Text(
              tdButtonName,
              style: TextStyle(
                  fontSize: 18.sp,
                  color: myBlueAccent,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
}
