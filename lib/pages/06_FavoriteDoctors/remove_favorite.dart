import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myFullCustomButton.dart';

import '../Z_other/myColor.dart';
import '../Z_other/myCustom_ListTile.dart';
import 'favorit_doctors_list.dart';

class RemoveFavorite extends StatelessWidget {
  const RemoveFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20.h),
                    child: Text(
                      'Remove From Favorites',
                      style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                    )),
                myCustom_ListTile(
                  myChart_Leading: const Image(
                    image: AssetImage('assets/images/doctors/doctor3.png'),
                  ),
                  myChart_Title: Container(
                    height: MediaQuery.of(context).size.height * .12,
                    padding: EdgeInsets.only(right: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${favoriteDoctorList[index].doctorsName}',
                              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.favorite_sharp,
                                color: myBlueAccent,
                                size: 24.sp,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            Text(
                              '${favoriteDoctorList[index].doctorsCategory}   |   ${favoriteDoctorList[index].doctorsHospital}',
                              style: TextStyle(fontSize: 16.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: myBlueAccent,
                              size: 20.sp,
                            ),
                            Text('${favoriteDoctorList[index].doctorsRating} (${favoriteDoctorList[index].doctorsReviews} Reviews)'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: myFullCustomButton(
                          myButtonBackgroundColor: myBluegrey,
                          myButtonForgroundColor: myBlueAccent,
                          myButtonBorderColor: myBluegrey,
                          myButtonHeight: 50,
                          myButtonFontSize: 18,
                          myButtonTitle: 'Cancel',
                          myOnPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Expanded(
                        child: myFullCustomButton(
                          myButtonHeight: 50,
                          myButtonFontSize: 18,
                          myButtonTitle: 'Yes, Remove',
                          myOnPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
