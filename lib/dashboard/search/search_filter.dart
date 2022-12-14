import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/reusable_widget/button_custom.dart';

import '../../reusable_widget/color_custom.dart';
import '../../reusable_widget/sized_box.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.40,
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 25.h),
                      child: Text(
                        'Filter',
                        style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                      )),
                  height10(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Doctors',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                        ],
                      ),
                      height20(),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            topDoctorsButton(context, tdButtonName: 'All', tdPageName: '/login'),
                            topDoctorsButton(context, tdButtonName: 'Dentist', tdPageName: '/login'),
                            topDoctorsButton(context, tdButtonName: 'Neurologist', tdPageName: '/login'),
                            topDoctorsButton(context, tdButtonName: 'Orthopedics', tdPageName: '/login'),
                            topDoctorsButton(context, tdButtonName: 'General', tdPageName: '/login'),
                          ],
                        ),
                      ),
                      height15(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rating',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                        ],
                      ),
                      height20(),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            starContainer(filterRating: 'All'),
                            starContainer(filterRating: '4'),
                            starContainer(filterRating: '3'),
                            starContainer(filterRating: '2'),
                            starContainer(filterRating: '1'),
                            starContainer(filterRating: '0'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  height15(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: myFullCustomButton(
                            buttonForgroundColor: myPinkAccent,
                            buttonBorderColor: myGrey,
                            buttonBackgroundColor: myGrey,
                            buttonTitle: 'Reset',
                            myOnPressed: () {},
                          ),
                        ),
                        width15(),
                        Expanded(
                          child: myFullCustomButton(
                            buttonTitle: 'Apply',
                            myOnPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }

  Widget topDoctorsButton(BuildContext context, {required String tdButtonName, required String tdPageName}) => SizedBox(
        height: 35.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.r),
                  side: const BorderSide(color: Colors.blue),
                )),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {
              Navigator.pushNamed(context, tdPageName);
            },
            child: Text(
              tdButtonName,
              style: TextStyle(fontSize: 18.sp, color: myPinkAccent, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );

  Widget starContainer({required String filterRating}) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                size: 22.sp,
                color: myPinkAccent,
              ),
              Text(
                filterRating,
                style: TextStyle(fontSize: 20.sp, color: myPinkAccent),
              )
            ],
          ),
        ),
      );
}
