import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reusable_widget/appbar.dart';

class FillProfile extends StatelessWidget {
  const FillProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context, appBarTitle: 'Fill Your Profile'),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                // Welcome Picture
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 100.r,
                          backgroundImage:
                          const AssetImage('assets/images/profile.png'),
                        ),
                        Positioned(
                          bottom: 5.h,
                            right: -25.h,
                            child: RawMaterialButton(
                              onPressed: (){},
                              shape: const CircleBorder(),
                              fillColor: Colors.blueAccent[700],
                              child: const Icon(Icons.edit, color: Colors.white,),
                            )
                        ),
                      ],
                    ),
                  ],
                ),
                // Let's You In
                SizedBox(height: 30.h),

                myTextField(
                    myPrefixIcon: const Icon(Icons.email),
                    htext: "Full Name",
                    mySuffixIcon: const Icon(null)),
                myTextField(
                    myPrefixIcon: const Icon(Icons.email),
                    htext: "Nickname",
                    mySuffixIcon: const Icon(null)),
                myTextField(
                    myPrefixIcon: const Icon(Icons.email),
                    htext: "Date of birth",
                    mySuffixIcon: const Icon(Icons.calendar_month)),
                myTextField(
                    myPrefixIcon: const Icon(Icons.email),
                    htext: "Email",
                    mySuffixIcon: const Icon(Icons.arrow_drop_down_circle_outlined)),
                myTextField(
                    myPrefixIcon: const Icon(Icons.email),
                    htext: "Gander",
                    mySuffixIcon: const Icon(Icons.arrow_drop_down)),

                SizedBox(height: 10.h),

                SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/create_pin');
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
                        'Continue',
                        style: TextStyle(fontSize: 18.sp),
                      )),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          )),
    );
  }

  // My Shortcut
  // My Shortcut
  }

Widget myTextField(
    {required Icon myPrefixIcon, required Icon mySuffixIcon, required String htext}) =>
    Expanded(
      child: SizedBox(
        height: 50.h,
        width: double.infinity,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: myPrefixIcon,
              suffixIcon: mySuffixIcon,
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
      ),
    );