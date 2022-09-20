import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';
import '../06_FavoriteDoctors/ListItem_FavoriteDoctors.dart';
import '../06_FavoriteDoctors/remove_favorite.dart';
import '../Z_other/myColor.dart';
import '../Z_other/myCustom_ListTile.dart';
import '../Z_other/mySizedBox.dart';

class TopDoctors extends StatelessWidget {
  const TopDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mycustomAppBar(context,
          appBarTitle: 'Top Doctors',
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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    topDoctorsButtons(context, tdButtonName: 'All', tdPageName: '/login'),
                    topDoctorsButtons(context, tdButtonName: 'Dentist', tdPageName: '/login'),
                    topDoctorsButtons(context, tdButtonName: 'Neurologist', tdPageName: '/login'),
                    topDoctorsButtons(context, tdButtonName: 'Orthopedics', tdPageName: '/login'),
                    topDoctorsButtons(context, tdButtonName: 'General', tdPageName: '/login'),
                  ],
                ),
              ),
            ),
            Flexible(
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
                                      Icons.favorite_border_sharp,
                                      color: myBlueAccent,
                                      size: 24.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.h),
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
                                Text('${fvDoctorsList[index].doctorsRating}'
                                    '(${fvDoctorsList[index].doctorsReviews} Reviews)'),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget topDoctorsButtons(BuildContext context, {required String tdButtonName, required String tdPageName}) => SizedBox(
        height: 40.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
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
              style: TextStyle(fontSize: 16.sp, color: myBlueAccent, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
}
