import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reusable_widget/color_custom.dart';
import '../reusable_widget/sized_box.dart';

Widget octorsProfileData() => Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.deepOrange[50], border: Border.all(color: Colors.transparent), borderRadius: BorderRadius.all(Radius.circular(10.r))),
          child: Row(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Text(
                        'Dr Becky Watson',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                      ),
                    ),
                    Divider(
                      endIndent: 10,
                      thickness: 1,
                      height: 1.h,
                      color: Colors.grey[400],
                    ),
                    height10(),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      'Neurologist',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    height10(),
                    Text(
                      'Ibne Sina Hospital',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );

Widget doctorProfileIcon({required var dcicon, required String dcCategory, required dcPoint}) => Expanded(
      child: Column(
        children: [
          CircleAvatar(
              radius: 30.r,
              backgroundColor: Colors.blueGrey[100],
              child: Icon(
                dcicon,
                size: 30.sp,
                color: myPinkAccent,
              )),
          height10(),
          Text(
            dcPoint,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: myPinkAccent),
          ),
          Text(
            dcCategory,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp),
          ),
        ],
      ),
    );

Widget doctorsReviewC(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reviews',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/DoctorsReviews');
              },
              child: Text('See All', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: myPinkAccent)),
            ),
          ],
        ),
        height10(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  child: Image.asset('assets/images/profile2.png'),
                ),
                width5(),
                Text(
                  'Charlotte Hamlin',
                  style: TextStyle(fontSize: 15.sp),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 25.sp,
                        ),
                        Text(
                          '5',
                          style: TextStyle(fontSize: 20.sp),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.data_saver_on_sharp,
                      size: 30.sp,
                    ))
              ],
            )
          ],
        ),
        height10(),
        Text(
          'Neurology is the branch of medicine concerned with the study and '
          'treatment of disorders of the nervous system. The nervous'
          'system is a complex system that regulates'
          'and coordinates body activities........',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 16.sp),
        ),
        height20(),
      ],
    );
