import 'package:flutter/material.dart';
import 'package:medica/02.%20Sign%20Up%20&%20Sign%20In%20(a)/10_Light_sign%20up%20blank%20form.dart';
import 'package:medica/02.%20Sign%20Up%20&%20Sign%20In%20(a)/9_light_lets%20you%20in.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/03.%20Sign%20Up%20&%20Sign%20In%20(b)/16_Light_fill%20your%20profile%20blank%20form.dart';
import 'package:medica/03.%20Sign%20Up%20&%20Sign%20In%20(b)/18_Light_create%20new%20PIN.dart';
import 'package:medica/03.%20Sign%20Up%20&%20Sign%20In%20(b)/19_Light_set%20your%20fingerprint.dart';

import '02. Sign Up & Sign In (a)/13_Light_sign in blank form.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const lets_you_in()));
                    },
                    child: Text('9_Light_lets you in',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const sign_up_blank()));
                    },
                    child: Text('10_Light_sign up blank form',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const sign_in_blank()));
                    },
                    child: Text('13_Light_sign in blank form',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const fill_your_profile()));
                    },
                    child: Text('16_Light_fill your profile blank form',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const create_new_pin()));
                    },
                    child: Text('18_Light_create new PIN',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const set_yout_fingerprint()));
                    },
                    child: Text('19_Light_set your fingerprint',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
