
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/full_custom_button.dart';
import 'package:medica/pages/Z_other/custom_sized_box.dart';
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HomePage');
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30.sp,
              color: Colors.black,
            )),
      ),
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
              icoo: 'assets/images/facebook.png',
              labell: 'Continue with Facebook',
            ),
            height15(),
            myTextButton(
              icoo: 'assets/images/google.png',
              labell: 'Continue with Google',
            ),
            height15(),
            myTextButton(
              icoo: 'assets/images/apple.png',
              labell: 'Continue with Apple',
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
                          ))),
                ],
              ),
            ),
            SizedBox(height: 15.h),
          ],
        ),
      )),
    );
  }

  // My Shortcut
  // My Shortcut
  Widget myTextButton({required String icoo, required String labell}) => SizedBox(
        height: 60.h,
        width: double.infinity,
        child: TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.black),
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 18.h)),
              elevation: MaterialStateProperty.all(.5)),
          icon: CircleAvatar(
            radius: 11.r,
            backgroundImage: AssetImage(icoo),
            backgroundColor: Colors.transparent,
          ),
          label: Text(
            labell,
            style: TextStyle(fontSize: 15.sp),
          ),
        ),
      );
}
