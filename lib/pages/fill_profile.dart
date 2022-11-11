import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/reusable_widget/color_custom.dart';
import 'package:medica/reusable_widget/button_custom.dart';
import 'package:medica/reusable_widget/sized_box.dart';

import '../reusable_widget/appbar_custom.dart';

class FillProfile extends StatelessWidget {
  const FillProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context, appBarTitle: 'Fill Your Profile'),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height * .85,
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 100.r,
                        backgroundImage: const AssetImage('assets/images/profile.png'),
                      ),
                      Positioned(
                        bottom: 5.h,
                        right: -25.h,
                        child: RawMaterialButton(
                          onPressed: () {},
                          shape: const CircleBorder(),
                          fillColor: myPinkAccent,
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              height30(),
              myTextFieldPrefix(
                myPrefixIcon: const Icon(Icons.email),
                htext: "Full Name",
                mySuffixIcon: const Icon(null),
              ),
              myTextFieldPrefix(
                myPrefixIcon: const Icon(Icons.email),
                htext: "Nickname",
                mySuffixIcon: const Icon(null),
              ),
              myTextFieldPrefix(
                myPrefixIcon: const Icon(Icons.email),
                htext: "Date of birth",
                mySuffixIcon: const Icon(Icons.calendar_month),
              ),
              myTextFieldPrefix(
                myPrefixIcon: const Icon(Icons.email),
                htext: "Email",
                mySuffixIcon: const Icon(Icons.arrow_drop_down_circle_outlined),
              ),
              myTextFieldPrefix(
                myPrefixIcon: const Icon(Icons.email),
                htext: "Gander",
                mySuffixIcon: const Icon(Icons.arrow_drop_down),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
        buttonTitle: 'Continue',
        myOnPressed: () {
          Navigator.pushNamed(context, '/create_pin');
        },
      ),
    );
  }
}
