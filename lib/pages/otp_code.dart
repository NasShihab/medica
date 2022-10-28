import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpCode extends StatelessWidget {
  const OtpCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'OTP Code Verification',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HomePage');
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: Padding(
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
              SizedBox(
                height: 60.h,
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/CreatePassword');
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent[700]),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14.h)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.r))),
                    ),
                    child: Text(
                      'Verify',
                      style: TextStyle(fontSize: 18.sp),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
