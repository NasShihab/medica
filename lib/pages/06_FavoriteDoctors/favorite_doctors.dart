import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/06_FavoriteDoctors/remove_favorite.dart';
import 'package:medica/pages/Z_other/myColor.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';
import '../Z_other/myCustom_ListTile.dart';
import 'ListItem_FavoriteDoctors.dart';

class FavoriteDoctors extends StatelessWidget {
  const FavoriteDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mycustomAppBar(context,
          appBarTitle: 'My Favorite Doctors',
          actionBarIcons: Row(
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
            Navigator.pushNamed(context, '/DoctorsProfile');
          },
          child: ListView.builder(
              itemCount: fvDoctorsList.length,
              itemBuilder: (context, index) {
                return myCustom_ListTile(
                  myChart_Title: Column(
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
                              onPressed: () {
                                showModalBottomSheet(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30.r))),
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
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.h),
                        child: Divider(
                          thickness: 2,
                          height: 2.h,
                        ),
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
                );
              }),
        ),
      ),
    );
  }
}
