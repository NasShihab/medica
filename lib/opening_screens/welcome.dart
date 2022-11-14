import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reusable_widget/sized_box.dart';
import '../reusable_widget/button_custom.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            // Welcome Picture
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 130.r,
                  backgroundImage: const AssetImage('assets/images/welcome.jpg'),
                ),
              ],
            ),
            // Let's You In
            Text(
              'Let\'s you in ',
              style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
            ),
            height30(),
            myTextButton(
              icon: 'assets/images/facebook.png',
              label: 'Continue with Facebook',
            ),
            height15(),
            myTextButton(
              icon: 'assets/images/google.png',
              label: 'Continue with Google',
            ),
            height15(),
            myTextButton(
              icon: 'assets/images/apple.png',
              label: 'Continue with Apple',
            ),
            height20(),
            Center(
              child: Text(
                'or',
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            height20(),
            myFullCustomButton(
                buttonTitle: 'Sign in with password',
                buttonOoutsidePaddingHorizontal: 0,
                myOnPressed: () {
                  Navigator.pushNamed(context, '/login');
                }),
            height5(),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                    ),
                  ),
                  Flexible(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
          ],
        ),
      )),
    );
  }
}
