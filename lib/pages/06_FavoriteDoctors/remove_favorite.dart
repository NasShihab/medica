import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myFullCustomButton.dart';

import '../Z_other/myColor.dart';
import '../Z_other/myCustom_ListTile.dart';
import '../Z_other/mySizedBox.dart';
import 'ListItem_FavoriteDoctors.dart';

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
                  myChart_Title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${fvDoctorsList[index].doctorsName}',
                              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {
                                showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(30.r),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) {
                                      return const RemoveFavorite();
                                    });
                              },
                              icon: Icon(
                                Icons.favorite_sharp,
                                color: myBlueAccent,
                                size: 24.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        height: 2.h,
                      ),
                      height10(),
                      Text('${fvDoctorsList[index].doctorsCategory}   |   ${fvDoctorsList[index].doctorsHospital}',
                          style: TextStyle(fontSize: 16.sp)),
                      height10(),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: myBlueAccent,
                            size: 20.sp,
                          ),
                          Text('${fvDoctorsList[index].doctorsRating} (${fvDoctorsList[index].doctorsReviews} Reviews)'),
                        ],
                      )
                    ],
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
