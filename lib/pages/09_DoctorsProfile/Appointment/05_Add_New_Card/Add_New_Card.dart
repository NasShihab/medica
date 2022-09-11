import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Z_other/mySizedBox.dart';
import '../03_Patient_Details/Patient_Details_Widget.dart';
import 'Add_New_Card_Widget.dart';

class Add_New_Card extends StatelessWidget {
  const Add_New_Card({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation:
          FloatingActionButtonLocation
              .centerFloat,
      floatingActionButton: pdNextButton(context,
          tdButtonName: 'Next',
          tdPageName: '/welcome'),
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
            'Add New Card',
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
            horizontal: 22.w),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            height10(),
            const Image(
                width: double.infinity,
                image: AssetImage(
                    'assets/images/visa_card.png')),
            Text('Card Name', style: TextStyle(fontSize: 18.sp)),
            height20(),
            add_Card_TextField(pdHintText: 'Antony Gomez'),
            height20(),
            Text('Card Number', style: TextStyle(fontSize: 18.sp)),
            height20(),
            add_Card_TextField(pdHintText: '4587 1549 3650 4005'),
            height20(),
            Row(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expiry Date', style: TextStyle(fontSize: 18.sp)),
                      height20(),
                      Expiry_TextField(exHintText: '26/06/22'),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CVV', style: TextStyle(fontSize: 18.sp)),
                      height20(),
                      add_Card_TextField(pdHintText: '910'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
