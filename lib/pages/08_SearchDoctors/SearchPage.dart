import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../DoctorsFullList/ListItem_DoctorsList.dart';
import '../Z_other/myColor.dart';
import '../Z_other/mySizedBox.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController? _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: TextField(
            onChanged: (value) {},
            controller: _textEditingController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(45),
              ),
              hintText: 'Search Doctors Here',
            ),
          ),
        ),
        body: SafeArea(
          child: DoctorsListView(),
        ));
  }

  Widget DoctorsListView() => ListView.builder(
      itemCount: DoctorsFullData.length,
      itemBuilder: (context, index) {
        return Column(
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
                                '${DoctorsFullData[index].doctorsImage}'),
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
                              '${DoctorsFullData[index].doctorsName}',
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
                            '${DoctorsFullData[index].doctorsCategory}   |   ${DoctorsFullData[index].doctorsHospital}'),
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
                                '${DoctorsFullData[index].doctorsRating.toString()} (${DoctorsFullData[index].doctorsReviews.toString()} Reviews)')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      });
}
