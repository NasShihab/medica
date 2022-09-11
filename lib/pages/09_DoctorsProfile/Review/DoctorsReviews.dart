import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';
import 'DoctorsReviews_Model.dart';

class DoctorsReviews extends StatelessWidget {
  const DoctorsReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mycustomAppBar(context, appBarTitle: '4.8(4,200 reviews)',
          action_Icons: IconButton(onPressed: (){}, icon: Icon(Icons.expand_circle_down_outlined, color: Colors.black,)),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    starContainer(filterRating: 'All'),
                    starContainer(filterRating: '4'),
                    starContainer(filterRating: '3'),
                    starContainer(filterRating: '2'),
                    starContainer(filterRating: '1'),
                    starContainer(filterRating: '0'),
                  ],
                ),
              ),
              height20(),
              Flexible(
                child: DoctorsReviewCard(context),
              ),
            ],
          )),
    );
  }
}
