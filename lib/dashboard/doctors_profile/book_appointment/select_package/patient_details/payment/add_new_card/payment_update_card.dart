import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../reusable_widget/appbar_custom.dart';
import '../../../../../../../reusable_widget/button_custom.dart';
import '../../../../../../../reusable_widget/color_custom.dart';
import '../../../../../../../reusable_widget/sized_box.dart';

class PaymentUpdateCard extends StatelessWidget {
  const PaymentUpdateCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: paymentNextButton(context, tdButtonName: 'Next', tdPageName: '/Review_Summary'),
      floatingActionButton: myFullCustomButton(
        buttonTitle: 'Next',
        myOnPressed: () {
          Navigator.pushNamed(context, '/Review_Summary');
        },
      ),
      appBar: customAppBar(
        context,
        appBarTitle: 'Update Card',
        actionBarIcons: Icon(
          Icons.qr_code,
          size: 30.sp,
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
              height: 400.h,
              child: ListView.builder(
                itemCount: updatePaymentMethodList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                        visualDensity: VisualDensity(horizontal: 4, vertical: -1.h),
                        leading: Image.asset(height: 40, width: 40, '${updatePaymentMethodList[index].uppaymentLogo}'),
                        title: Text(
                          '${updatePaymentMethodList[index].uppaymentName}',
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

List updatePaymentMethodList = [
  UpdatePaymentMethodClass(
    'assets/images/paypal.png',
    'Paypal',
  ),
  UpdatePaymentMethodClass(
    'assets/images/google.png',
    'Google Pay',
  ),
  UpdatePaymentMethodClass(
    'assets/images/apple.png',
    'Apple Pay',
  ),
  UpdatePaymentMethodClass(
    'assets/images/master_card.png',
    '----------------- 4789',
  ),
];

class UpdatePaymentMethodClass {
  final String uppaymentLogo;
  final String uppaymentName;

  UpdatePaymentMethodClass(
    this.uppaymentLogo,
    this.uppaymentName,
  );
}
