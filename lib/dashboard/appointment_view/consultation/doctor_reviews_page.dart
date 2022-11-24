import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doctors_reviews_page_widget.dart';
import '../../../reusable_widget/sized_box.dart';
import '../../../reusable_widget/appbar_custom.dart';

class DoctorReviewPage extends StatelessWidget {
  const DoctorReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, appBarTitle: '4.8(4,200 reviews)',
          actionBarIcons: IconButton(onPressed: (){}, icon: const Icon(Icons.expand_circle_down_outlined, color: Colors.black,)),
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
                child: doctorsReviewCard(context),
              ),
            ],
          )),
    );
  }
}
