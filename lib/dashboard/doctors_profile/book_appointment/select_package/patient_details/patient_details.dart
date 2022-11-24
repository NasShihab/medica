import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/reusable_widget/button_custom.dart';
import '../../../../../reusable_widget/appbar_custom.dart';
import 'patient_details_widget.dart';
import '../../../../../reusable_widget/sized_box.dart';

class PatientDetails extends StatelessWidget {
  const PatientDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        buttonTitle: 'Next',
        myOnPressed: () {
          Navigator.pushNamed(context, '/Payments_Page');
        },
      ),
      appBar: customAppBar(
        context,
        appBarTitle: 'Patient Details',
        actionBarIcons: Row(
          children: [
            IconButton(
              visualDensity: VisualDensity.compact,
              onPressed: () {},
              icon: Icon(
                Icons.arrow_drop_down_circle,
                size: 30.sp,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height10(),
            Text(
              'Full Name',
              style: TextStyle(fontSize: 20.sp),
            ),
            height20(),
            pdTextField(pdHintText: 'Antony Gomez'),
            height20(),
            Text(
              'Gender',
              style: TextStyle(fontSize: 20.sp),
            ),
            height20(),
            ganderDropDown(),
            height20(),
            Text(
              'Your Age',
              style: TextStyle(fontSize: 20.sp),
            ),
            height20(),
            ageDropDown(),
            height30(),
            Text(
              'Write your problem',
              style: TextStyle(fontSize: 20.sp),
            ),
            height20(),
            longTextBox(pdHintText: 'Hello Doctor, my problem is.............'),
          ],
        ),
      ),
    );
  }
}
