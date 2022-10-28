import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/full_custom_button.dart';

import '../Z_other/custom_color.dart';
import '../Z_other/custom_list_tile.dart';
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
                customListTile(
                  myChartLeading: const Image(
                    image: AssetImage('assets/images/doctors/doctor3.png'),
                  ),
                  myChartTitle: Container(
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
                          buttonBackgroundColor: myBluegrey,
                          buttonForgroundColor: myBlueAccent,
                          buttonBorderColor: myBluegrey,
                          buttonHeight: 50,
                          buttonFontSize: 18,
                          buttonTitle: 'Cancel',
                          myOnPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Expanded(
                        child: myFullCustomButton(
                          buttonHeight: 50,
                          buttonFontSize: 18,
                          buttonTitle: 'Yes, Remove',
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
