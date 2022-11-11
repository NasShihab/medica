import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../reusable_widget/appbar_custom.dart';
import '../reusable_widget/button_custom.dart';
import '../reusable_widget/sized_box.dart';

class CreateNewPin extends StatelessWidget {
  const CreateNewPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context, appBarTitle: 'Create New Pin'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add a PIN number to make your account more secure',
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        buttonTitle: 'Continue',
        myOnPressed: () {
          Navigator.pushNamed(context, '/fingerprint');
        },
      ),
    );
  }
}
