// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../firstPage.dart';

// ignore: camel_case_types
class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                  const firstPage()));
            },
            icon: const Icon(
              Icons.arrow_back,
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
                  backgroundImage:
                      const AssetImage('assets/images/welcome.jpg'),
                ),
              ],
            ),
            // Let's You In
            Text(
              'Let\'s you in ',
              style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.h),
            myTextButton(
              icoo: 'assets/images/facebook.png',
              labell: 'Continue with Facebook',
            ),
            SizedBox(height: 15.h),
            myTextButton(
              icoo: 'assets/images/google.png',
              labell: 'Continue with Google',
            ),
            SizedBox(height: 15.h),
            myTextButton(
              icoo: 'assets/images/apple.png',
              labell: 'Continue with Apple',
            ),
            SizedBox(height: 20.h),
            Center(
              child: Text(
                'or',
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent[700]),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 14.h)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.r))),
                  ),
                  child: Text(
                    'Sign in with password',
                    style: TextStyle(fontSize: 18.sp),
                  )),
            ),
            SizedBox(height: 5.h),
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
                          onPressed: () {},
                          child: Text(
                            'Sign Up',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
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
  Widget myTextButton({required String icoo, required String labell}) =>
      SizedBox(
        height: 60.h,
        width: double.infinity,
        child: TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.black),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 18.h)),
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
