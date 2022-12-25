import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/reusable_widget/appbar_custom.dart';
import 'package:medica/reusable_widget/button_custom.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context, appBarTitle: 'Create New Password'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 250.h,
                child: CircleAvatar(
                  radius: 150.r,
                  backgroundImage: const AssetImage('assets/images/phone.jpg'),
                ),
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Create your new password',
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  myPasswordField(
                      icon: const Icon(Icons.lock),
                      hintText: "Enter New Password",
                      suffixIcon: const Icon(
                        Icons.visibility_off,
                      ),
                      height: 60.h),
                  SizedBox(height: 10.h),
                  myPasswordField(
                    icon: const Icon(Icons.lock),
                    hintText: "Repeat Your Password",
                    suffixIcon: const Icon(
                      Icons.visibility_off,
                    ),
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    value: false,
                    onChanged: (bool? value) {},
                    title: const Text('Remember Me'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        buttonTitle: 'Continue',
        myOnPressed: () {
          showDialog(
            context: context,
            builder: (context) => alert(context),
          );
        },
      ),
    );
  }
}

AlertDialog alert(BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.r))),
      content: SizedBox(
        height: 500.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: CircleAvatar(
                radius: 120.r,
                backgroundColor: Colors.transparent,
                backgroundImage: const AssetImage('assets/images/profile2.png'),
              ),
            ),
            Flexible(
              child: Text(
                'Congratulations',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                  color: Colors.blueAccent[700],
                ),
              ),
            ),
            Flexible(
              child: Text(
                'Your account is ready to use. You will be redirected to HomePage',
                style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/bottom_bar_page');
                },
                child: CircleAvatar(
                  radius: 40.r,
                  backgroundColor: Colors.transparent,
                  backgroundImage:
                      const AssetImage('assets/images/loading.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
