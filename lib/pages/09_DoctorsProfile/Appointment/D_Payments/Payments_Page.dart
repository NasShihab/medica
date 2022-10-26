import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Z_other/mySizedBox.dart';
import 'Payments_page_Widget.dart';

class Payments_Page extends StatelessWidget {
  const Payments_Page({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation
              .centerFloat,
      floatingActionButton: pay_NextButton(
          context,
          tdButtonName: 'Next',
          tdPageName: '/Review_Summary'),
      appBar: AppBar(
        actions: [
          IconButton(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.qr_code_scanner_outlined,
                color: Colors.black,
                size: 30.sp,
              )),
        ],
        title: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            'Payments',
            style: TextStyle(
                fontSize: 24.sp,
                color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(
                  context, '/HomePage');
            },
            icon: Icon(
              Icons.arrow_back,
              size: 24.sp,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 20.w),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center,
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
                itemCount: PaymentMethodList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                        visualDensity:
                            VisualDensity(horizontal: 4, vertical: -1.h),
                        leading: Image.asset(
                            height: 40,
                            width: 40,
                            '${PaymentMethodList[index].paymentLogo}'),
                        title: Text(
                          '${PaymentMethodList[index].paymentName}',
                          style: TextStyle(
                              fontWeight:
                                  FontWeight.bold,
                              fontSize: 20.sp),
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
            pay_AddNewButton(context,
               pay_pageName: '/Add_New_Card',
               pay_AddNewButton_Name:
                   'Add New Card'),
          ],
        ),
      ),
    );
  }
}

List PaymentMethodList = [
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
