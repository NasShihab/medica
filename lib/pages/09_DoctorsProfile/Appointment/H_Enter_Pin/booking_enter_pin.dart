import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myFullCustomButton.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'booking_enter_pin_widget.dart';

class BookingEnterPin extends StatelessWidget {
  const BookingEnterPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: mycustomAppBar(context, appBarTitle: 'Enter Pin'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter your pin to confirm your appointment',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.sp),
              ),
              height50(),
              PinCodeTextField(
                pinTheme: PinTheme(
                  inactiveColor: Colors.grey,
                  activeColor: Colors.grey,
                  shape: PinCodeFieldShape.box,
                ),
                obscuringCharacter: "o",
                appContext: context,
                length: 4,
                onChanged: (value) {},
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: myFullCustomButton(
        myButtonTitle: 'Continue',
        myOnPressed: () {
          showDialog(context: context, builder: (context) => errorAlertWidget(context));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
