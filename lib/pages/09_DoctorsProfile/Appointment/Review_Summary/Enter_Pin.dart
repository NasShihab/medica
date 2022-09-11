import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/09_DoctorsProfile/Appointment/Review_Summary/Enter_Pin_Widget.dart';
import 'package:medica/pages/Z_other/custom_Button.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Enter_Pin extends StatelessWidget {
  const Enter_Pin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: mycustom_ShowDialogbutton_Blue(context,
          bttttname: 'Continue',
          myCCustomDialog: errorAlert_Widget(context)),
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Enter Your PIN',
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
          )),
    );
  }
}
