import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reusable_widget/button_custom.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            // Welcome Picture
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100.r,
                  backgroundImage: const AssetImage('assets/images/welcome.jpg'),
                ),
              ],
            ),
            // Let's You In
            Text(
              'Create New Account',
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.h),
            myTextField(
              icon: const Icon(Icons.email),
              hintText: "Email",
              suffixIcon: const Icon(null),
            ),
            SizedBox(height: 10.h),
            myPasswordField(
              icon: const Icon(Icons.lock),
              hintText: "Password",
              suffixIcon: const Icon(
                Icons.visibility_off,
              ),
            ),
            CheckboxListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 90.w),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.green,
              checkColor: Colors.white,
              value: false,
              onChanged: (bool? value) {},
              title: const Text('Remember Me'),
            ),
            SizedBox(height: 10.h),
            myFullCustomButton(
              buttonTitle: 'Sign Up',
              myOnPressed: () {
                Navigator.pushNamed(context, '/FillProfile');
              },
            ),
            SizedBox(height: 20.h),
            Text(
              'Or Continue with',
              style: TextStyle(fontSize: 18.sp, color: Colors.grey),
            ),
            SizedBox(height: 20.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: Card(
                      child: Image.asset('assets/images/facebook.png'),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: Card(
                      child: Image.asset('assets/images/google.png'),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: Card(
                      child: Image.asset('assets/images/apple.png'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                    ),
                  ),
                  Flexible(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

// My Shortcut
// My Shortcut
}
