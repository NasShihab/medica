import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/06_FavoriteDoctors/remove_favorite.dart';
import 'package:medica/pages/Z_other/myColor.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';

import 'ListItem_FavoriteDoctors.dart';

class FavoriteDoctors extends StatelessWidget {
  const FavoriteDoctors({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mycustomAppBar(context,
          appBarTitle: 'My Favorite Doctors',
          action_Icons: Row(
            children: [
              IconButton(
                visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(
                    Icons.search_sharp,
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
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
                context, '/DoctorsProfile');
          },
          child: ListView.builder(
              itemCount: fvDoctorsList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 5.h),
                  decoration: BoxDecoration(
                      color:
                          Colors.deepOrange[50],
                      border: Border.all(
                          color:
                              Colors.transparent),
                      borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  10.r))),
                  child: Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets
                                  .symmetric(
                                      horizontal:
                                          10.w,
                                      vertical:
                                          10.h),
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius
                                    .all(Radius
                                        .circular(
                                            10.r)),
                                child: Image.asset(
                                    '${fvDoctorsList[index].doctorsImage}'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .stretch,
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                              children: [
                                Text(
                                  '${fvDoctorsList[index].doctorsName}',
                                  style: TextStyle(
                                      fontWeight:
                                          FontWeight
                                              .bold,
                                      fontSize:
                                          20.sp),
                                ),
                                IconButton(
                                    onPressed:
                                        () {
                                      showModalBottomSheet(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.vertical(
                                                  top: Radius.circular(30
                                                      .r))),
                                          context:
                                              context,
                                          builder:
                                              (context) {
                                            return const RemoveFavorite();
                                          });
                                    },
                                    icon: Icon(
                                      Icons
                                          .favorite,
                                      color:
                                          myBlueAccent,
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
                                '${fvDoctorsList[index].doctorsCategory}   |   ${fvDoctorsList[index].doctorsHospital}'),
                            height10(),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors
                                          .blueAccent[
                                      700],
                                  size: 20.sp,
                                ),
                                width5(),
                                Text(
                                    '${fvDoctorsList[index].doctorsRating.toString()} (${fvDoctorsList[index].doctorsReviews.toString()} Reviews)')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
