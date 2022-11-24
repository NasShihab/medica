import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/reusable_widget/appbar_custom.dart';
import 'package:medica/reusable_widget/button_custom.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpCodeVerification extends StatelessWidget {
  const OtpCodeVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context, appBarTitle: 'Enter OTP code for verification'),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height * .50,
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 2.h),
              Text(
                'Code has been sent to +880168****21',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.sp, color: Colors.grey),
              ),
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
        buttonTitle: 'Verify',
        myOnPressed: () {
          Navigator.pushNamed(context, '/CreatePassword');
        },
      ),
    );
  }
}
