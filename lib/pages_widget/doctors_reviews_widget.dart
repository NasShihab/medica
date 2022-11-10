import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../list_item/review_list.dart';
import '../reusable_widget/custom_color.dart';
import '../reusable_widget/sized_box.dart';

Widget doctorsReviewCard(BuildContext context) => ListView.builder(
      itemCount: eviewList.length,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name & Ratings
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    child: Image.asset('assets/images/profile2.png'),
                  ),
                  width5(),
                  Text(
                    '${eviewList[index].reviewerName}',
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 25.sp,
                            color: myBlueAccent,
                          ),
                          Text(
                            eviewList[index].reviewerRating.toString(),
                            style: TextStyle(fontSize: 20.sp, color: myBlueAccent),
                          )
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.data_saver_on_sharp,
                        size: 30.sp,
                      ))
                ],
              )
            ],
          ),
          height10(),
          // Comments
          Text(
            '${eviewList[index].reviewerComments}',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16.sp),
          ),
          height10(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(msg: 'Liked', toastLength: Toast.LENGTH_SHORT);
                },
                child: Icon(
                  Icons.favorite,
                  size: 28.sp,
                  color: myBlueAccent,
                ),
              ),
              width5(),
              Text(
                eviewList[index].reviewerLikes.toString(),
                style: TextStyle(fontSize: 15.sp),
              ),
              width20(),
              Text(
                '6 Days Ago',
                style: TextStyle(fontSize: 15.sp, color: Colors.grey[700]),
              ),
            ],
          ),
          height20(),
        ],
      ),
    );

Widget starContainer({required String filterRating}) => Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.purple,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
        child: Row(
          children: [
            Icon(
              Icons.star,
              size: 18.sp,
              color: myBlueAccent,
            ),
            Text(
              filterRating,
              style: TextStyle(fontSize: 20.sp, color: myBlueAccent),
            )
          ],
        ),
      ),
    );
