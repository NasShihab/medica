import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../reusable_widget/appbar_custom.dart';
import 'review_appointment_summary_widget.dart';
import '../../../../../../../reusable_widget/list_tile.dart';
import '../../../../../../../reusable_widget/sized_box.dart';
import '../../../../../../../reusable_widget/button_custom.dart';

class ReviewAppointmentSummary extends StatelessWidget {
  const ReviewAppointmentSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        appBarTitle: 'Review Summary',
      ),
      body: Column(
        children: [
          customListTile(
            myChartTitle: SizedBox(
              height: MediaQuery.of(context).size.height * .12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Alexa De Mexs',
                    style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    height: 2.h,
                    thickness: 2,
                  ),
                  Text(
                    'Nurologist',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  Text(
                    'Ibne Sina Hospital',
                    style: TextStyle(fontSize: 16.sp),
                  ),

                ],
              ),
            ),
          ),
          height30(),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent), borderRadius: BorderRadius.all(Radius.circular(15.r)), color: Colors.white),
                child: Column(
                  children: [
                    summaryRow(summaryName: 'Date & Hour', summaryPoint: '10:00 AM'),
                    summaryRow(summaryName: 'Package', summaryPoint: 'Messaging'),
                    summaryRow(summaryName: 'Duration', summaryPoint: '30 Minutes'),
                  ],
                ),
              ),
              height30(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent), borderRadius: BorderRadius.all(Radius.circular(15.r)), color: Colors.white),
                child: Column(
                  children: [
                    summaryRow(summaryName: 'Amount', summaryPoint: '10:00 AM'),
                    summaryRow(summaryName: 'Duration (30 mins)', summaryPoint: '1 X \$20'),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    summaryRow(summaryName: 'Total', summaryPoint: '30 Minutes'),
                  ],
                ),
              ),
              height30(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                height: 60,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                        visualDensity: VisualDensity(horizontal: 4, vertical: -1.h),
                        leading: Image.asset(height: 40, width: 40, 'assets/images/master_card.png'),
                        title: Text(
                          '---- ---- ---- 4786',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                        ),
                        trailing: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Payment_UpdateCard');
                          },
                          child: Text(
                            'Change',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                          ),
                        ));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        buttonTitle: 'Next',
        myOnPressed: () {
          Navigator.pushNamed(context, '/Enter_Pin');
        },
      ),
    );
  }
}
