import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../reusable_widget/appbar_custom.dart';
import 'select_package_widget.dart';
import '../../../../reusable_widget/sized_box.dart';
import '../../../../reusable_widget/button_custom.dart';

class SelectPackage extends StatelessWidget {
  const SelectPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
          buttonTitle: 'Next',
          myOnPressed: () {
            Navigator.pushNamed(context, '/Patient_Details');
          }),
      appBar: customAppBar(context,
          appBarTitle: 'Select Package',
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
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height10(),
            Text(
              'Select Duration',
              style: TextStyle(fontSize: 20.sp),
            ),
            height20(),
            SizedBox(
              height: 70.h,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.access_time_filled,
                      color: Colors.black,
                      size: 24.sp,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(15.r),
                    ))),
                value: '30 Minutes',
                items: <String>['30 Minutes', '45 Minutes', '60 Minutes', '90 Minutes'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            height30(),
            Text(
              'Select Package',
              style: TextStyle(fontSize: 20.sp),
            ),
            height20(),
            customSelectPackage(
              spText1: 'Messaging',
              spText2: 'Chat message',
              spMinutes: '30',
              spRate: 20,
              spWidget: Flexible(
                child: Radio(
                  value: 1,
                  groupValue: 'sd',
                  onChanged: (index) {},
                ),
              ),
            ),
            height20(),
            customSelectPackage(
              spText1: 'Video Call',
              spText2: 'Chat video call',
              spRate: 20,
              spMinutes: '30',
              spWidget: Flexible(
                child: Radio(
                  value: 1,
                  groupValue: 'sd',
                  onChanged: (index) {},
                ),
              ),
            ),
            height20(),
            customSelectPackage(
              spText1: 'Voice Call',
              spText2: 'Chat voice sdsdsddffs',
              spMinutes: '20',
              spRate: 30,
              spWidget: Flexible(
                child: Radio(
                  value: 1,
                  groupValue: 'sd',
                  onChanged: (index) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
