import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../pages_widget/patient_details_widget.dart';
import '../reusable_widget/color_custom.dart';
import '../reusable_widget/sized_box.dart';
import '../reusable_widget/appbar_custom.dart';
import '../reusable_widget/button_custom.dart';

class EndedReview extends StatelessWidget {
  const EndedReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, appBarTitle: 'Write a Review'),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 200.h,
                width: 200.w,
                child: CircleAvatar(
                  radius: 150.r,
                  backgroundImage: const AssetImage('assets/images/doctors/doctor3.png'),
                ),
              ),
              height10(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w),
                child: Text(
                  'How was your experience with Doctor Angela ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
              ),
              height20(),
              RatingBar(
                maxRating: 5,
                minRating: 0,
                onRatingUpdate: (double value) {},
                ratingWidget: RatingWidget(
                  full: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 20.sp,
                  ),
                  empty: Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 20.sp,
                  ),
                  half: Icon(
                    Icons.star_half,
                    size: 20.sp,
                  ),
                ),
              ),
              height20(),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      'Write your review',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
                    ),
                  ),
                ],
              ),
              height10(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: longTextBox(
                  ltMaxLine: 5,
                  pdHintText: 'Your review here',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Would you reccomand Dr. Angela D Costa to your friends ?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
              ),
              Row(
                children: [
                  Radio(value: 1, groupValue: 'ss', onChanged: (index) {}),
                  Text('Yes', style: TextStyle(fontSize: 18.sp)),
                  Radio(value: 1, groupValue: 'ss', onChanged: (index) {}),
                  Text('No', style: TextStyle(fontSize: 18.sp)),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
        child: Row(
          children: [
            Flexible(
              child: myFullCustomButton(
                buttonBackgroundColor: myGrey,
                buttonBorderColor: myGrey,
                buttonForgroundColor: myPinkAccent,
                buttonFontSize: 18,
                buttonTitle: 'Cancel',
                myOnPressed: () {},
              ),
            ),
            Flexible(
              child: myFullCustomButton(
                buttonTitle: 'Submit',
                buttonFontSize: 18,
                myOnPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.r))),
                        content: SizedBox(
                          height: 400.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 4,
                                child: CircleAvatar(
                                  radius: 120.r,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: const AssetImage('assets/images/profile2.png'),
                                ),
                              ),
                              height20(),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Review Sucessful',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp, color: myPinkAccent),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Your review has been successfully submitted. Thank you very much!',
                                  style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              height10(),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Flexible(
                                      child: myFullCustomButton(
                                        buttonTitle: 'Ok',
                                        myOnPressed: () {
                                          Navigator.pushNamed(context, '/HomePage');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
