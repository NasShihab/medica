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
          tdPageName: '/Add_New_Card'),
      appBar: AppBar(
        actions: [
          IconButton(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.expand_circle_down_outlined,
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
            boxPayment(
                payIcon:
                    'assets/images/paypal.png',
                payText: 'Paypal'),
            height30(),
            boxPayment(
                payIcon:
                    'assets/images/google.png',
                payText: 'Google Play'),
            height30(),
            boxPayment(
                payIcon:
                    'assets/images/apple.png',
                payText: 'Apple Pay'),
            height30(),
            pay_AddNewButton(context, pay_pageName: '/welcome', pay_AddNewButton_Name: 'Add New Card'),
          ],
        ),
      ),
    );
  }
}
