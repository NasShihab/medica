import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../list_item/favorit_doctors_list.dart';
import '../pages_widget/top_doctors_category.dart';
import '../reusable_widget/color_custom.dart';
import '../reusable_widget/list_tile.dart';
import '../reusable_widget/appbar_custom.dart';
import '../pages_widget/remove_favorite.dart';

class TopDoctors extends StatelessWidget {
  const TopDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,
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
                    categoryButton(context, titleButton: 'All', toastMsg: 'All',),
                    categoryButton(context, titleButton: 'Dentist', toastMsg: 'Dentist',),
                    categoryButton(context, titleButton: 'Neurologist', toastMsg: 'Neurologist',),
                    categoryButton(context, titleButton: 'Orthopedics', toastMsg: 'Orthopedics',),
                    categoryButton(context, titleButton: 'General', toastMsg: 'General',),
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
                    itemCount: favoriteDoctorList.length,
                    itemBuilder: (context, index) {
                      return customListTile(
                        myChartTitle: SizedBox(
                          height: MediaQuery.of(context).size.height * .12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${favoriteDoctorList[index].doctorsName}',
                                      style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                                    ),
                                    GestureDetector(
                                      onTap: (){
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
                                      child: Icon(Icons.favorite_border_sharp,
                                          color: myPinkAccent,
                                          size: 24.sp,),
                                    ),
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
                              Text('${favoriteDoctorList[index].doctorsCategory}   |   ${favoriteDoctorList[index].doctorsHospital}',
                                  style: TextStyle(fontSize: 16.sp)),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: myPinkAccent,
                                    size: 20.sp,
                                  ),
                                  Text('${favoriteDoctorList[index].doctorsRating}'
                                      '(${favoriteDoctorList[index].doctorsReviews} Reviews)'),
                                ],
                              )
                            ],
                          ),
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
}
