import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Z_other/myColor.dart';
import '../Z_other/mySizedBox.dart';
import 'list_Favorite_Doctors.dart';

class RemoveFavorite extends StatelessWidget {
  const RemoveFavorite({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.36,
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25.h),
                    child: Text(
                  'Remove From Favorites',
                  style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                )),
                height10(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  decoration: BoxDecoration(
                      color: Colors.deepOrange[50],
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                child: Image.asset(
                                    '${fvDoctorsList[index].fvImages}'),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${fvDoctorsList[index].fvName}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: myBlueAccent,
                                      size: 30.sp,
                                    ))
                              ],
                            ),
                            Divider(
                              endIndent: 10,
                              thickness: 1,
                              height: 1.h,
                              color: Colors.grey,
                            ),
                            height10(),
                            Text(
                                '${fvDoctorsList[index].fvCategory}   |   ${fvDoctorsList[index].fvHospital}'),
                            height10(),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.blueAccent[700],
                                  size: 20.sp,
                                ),
                                width5(),
                                Text(
                                    '${fvDoctorsList[index].fvRatings.toString()} (${fvDoctorsList[index].fvViews.toString()} Reviews)')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.lightBlue[100]),
                              foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(vertical: 14.h)),
                              shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(50.r))),
                            ),
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 18.sp, color: Colors.blueAccent[700]),
                            )),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                        child: TextButton(
                            onPressed: () {},
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
                                      borderRadius:
                                      BorderRadius.circular(50.r))),
                            ),
                            child: Text(
                              'Yes. Remove',
                              style: TextStyle(fontSize: 18.sp),
                            )),
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
