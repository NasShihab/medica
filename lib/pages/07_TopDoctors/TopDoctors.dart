import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Z_other/myColor.dart';
import '../Z_other/mySizedBox.dart';
import 'ListItem_TopDoctors.dart';

class TopDoctors extends StatelessWidget {
  const TopDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              alignment: Alignment.center,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 30.sp,
              )),
          IconButton(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.expand_circle_down_outlined,
                color: Colors.black,
                size: 30.sp,
              )),
        ],
        title: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            'Top Doctors',
            style: TextStyle(fontSize: 24.sp, color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HomePage');
            },
            icon: Icon(
              Icons.arrow_back,
              size: 20.sp,
              color: Colors.black,
            )),
      ),
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
                    topDoctorsButtons(context,
                        tdButtonName: 'All', tdPageName: '/login'),
                    topDoctorsButtons(context,
                        tdButtonName: 'Dentist', tdPageName: '/login'),
                    topDoctorsButtons(context,
                        tdButtonName: 'Neurologist', tdPageName: '/login'),
                    topDoctorsButtons(context,
                        tdButtonName: 'Orthopedics', tdPageName: '/login'),
                    topDoctorsButtons(context,
                        tdButtonName: 'General', tdPageName: '/login'),
                  ],
                ),
              ),
            ),
            Flexible(
              child: TopDoctorsListView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget TopDoctorsListView() => ListView.builder(
      itemCount: TopDoctorsList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/DoctorsProfile');
          },
          child: Column(
            children: [
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
                                  '${TopDoctorsList[index].doctorsImage}'),
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
                                '${TopDoctorsList[index].doctorsName}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20.sp),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border_sharp,
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
                              overflow: TextOverflow.ellipsis,
                              '${TopDoctorsList[index].doctorsCategory}   |   ${TopDoctorsList[index].doctorsHospital}'),
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
                                  '${TopDoctorsList[index].doctorsRating.toString()} (${TopDoctorsList[index].doctorsReviews.toString()} Reviews)')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });

  Widget topDoctorsButtons(BuildContext context,
          {required String tdButtonName, required String tdPageName}) =>
      SizedBox(
        height: 40.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.r),
                  side: const BorderSide(color: Colors.blue),
                )),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {
              Navigator.pushNamed(context, tdPageName);
            },
            child: Text(
              tdButtonName,
              style: TextStyle(
                  fontSize: 16.sp,
                  color: myBlueAccent,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
}
