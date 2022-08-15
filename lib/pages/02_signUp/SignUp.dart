import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../firstPage.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            SizedBox(height: 10.h),
            // Welcome Picture
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100.r,
                  backgroundImage:
                      const AssetImage('assets/images/welcome.jpg'),
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
                ico: const Icon(Icons.email),
                htext: "Email",
                sfico: const Icon(null)),
            SizedBox(height: 10.h),
            myPasswordField(
                ico: const Icon(Icons.lock),
                htext: "Password",
                sfico: const Icon(Icons.visibility_off)),
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
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent[700]),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 14.h)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r))),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18.sp),
                  )),
            ),
            SizedBox(height: 20.h),
            Text(
              'Or Continue with',
              style: TextStyle(
                  fontSize: 18.sp,
                color: Colors.grey
              ),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.sp),
                          ))),
                ],
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      )),
    );
  }

  // My Shortcut
  // My Shortcut
  Widget myTextField(
          {required Icon ico, required Icon sfico, required String htext}) =>
      SizedBox(
        height: 50.h,
        width: double.infinity,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: ico,
              suffixIcon: sfico,
              hintText: htext,
              hintStyle: TextStyle(fontSize: 12.sp),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: Colors.grey, width: 1.w),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: Colors.grey, width: 1.w),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
        ),
      );
  Widget myPasswordField(
          {required Icon ico, required Icon sfico, required String htext}) =>
       SizedBox(
         height: 50.h,
         width: double.infinity,
         child: TextField(
           obscureText: true,
           enableSuggestions: false,
           autocorrect: false,
           decoration: InputDecoration(
               prefixIcon: ico,
               suffixIcon: sfico,
               hintText: htext,
               hintStyle: TextStyle(fontSize: 12.sp),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(8.r),
                 borderSide: BorderSide(color: Colors.grey, width: 1.w),
               ),
               enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(8.r),
                 borderSide: BorderSide(color: Colors.grey, width: 1.w),
               ),
               contentPadding:
                   EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w)),
         ),
       );
}
