import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/reusable_widget/button_custom.dart';
import 'package:medica/reusable_widget/color_custom.dart';
import '../../../../../../reusable_widget/appbar_custom.dart';
import '../../../../../../reusable_widget/sized_box.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        buttonTitle: 'Next',
        myOnPressed: () {
          Navigator.pushNamed(context, '/Review_Summary');
        },
      ),
      appBar: customAppBar(
        context,
        appBarTitle: 'Payment',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            height10(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select the payment method you want to use',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            height20(),
            SizedBox(
              height: 300.h,
              child: ListView.builder(
                itemCount: paymentMethodList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                        visualDensity: VisualDensity(horizontal: 4, vertical: -1.h),
                        leading: Image.asset(height: 40, width: 40, '${paymentMethodList[index].paymentLogo}'),
                        title: Text(
                          '${paymentMethodList[index].paymentName}',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                        ),
                        trailing: Radio(
                          value: 1,
                          groupValue: 'null',
                          onChanged: (index) {},
                        ),
                      ),
                      height30(),
                    ],
                  );
                },
              ),
            ),
            myFullCustomButton(
              buttonBackgroundColor: myGrey,
              buttonBorderColor: Colors.tealAccent,
              buttonForgroundColor: myPinkAccent,
              buttonTitle: 'Add New Card',
              myOnPressed: () {
                Navigator.pushNamed(context, '/Add_New_Card');
              },
            )
          ],
        ),
      ),
    );
  }
}

List paymentMethodList = [
  PaymentMethodClass(
    'assets/images/paypal.png',
    'Paypal',
  ),
  PaymentMethodClass(
    'assets/images/google.png',
    'Google Pay',
  ),
  PaymentMethodClass(
    'assets/images/apple.png',
    'Apple Pay',
  ),
];

class PaymentMethodClass {
  final String paymentLogo;
  final String paymentName;

  PaymentMethodClass(
    this.paymentLogo,
    this.paymentName,
  );
}
