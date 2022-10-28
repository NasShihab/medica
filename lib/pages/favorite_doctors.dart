import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/remove_favorite.dart';
import '../list_item/favorit_doctors_list.dart';
import '../reusable_widget/custom_color.dart';
import '../reusable_widget/list_tile.dart';
import '../reusable_widget/appbar.dart';

class FavoriteDoctors extends StatelessWidget {
  const FavoriteDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,
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
              itemCount: favoriteDoctorList.length,
              itemBuilder: (context, index) {
                return customListTile(
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
                              onTap: () {
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
                );
              }),
        ),
      ),
    );
  }
}
