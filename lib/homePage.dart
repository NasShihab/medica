import 'package:flutter/material.dart';
import 'package:medica/02.%20Sign%20Up%20&%20Sign%20In%20(a)/10_Light_sign%20up%20blank%20form.dart';
import 'package:medica/02.%20Sign%20Up%20&%20Sign%20In%20(a)/9_light_lets%20you%20in.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                          const lets_you_in()));
                    },
                    child: Text('9_Light_lets you in',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
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
                          const lets_you_in()));
                    },
                    child: Text('9_Light_lets you in',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const lets_you_in()));
                    },
                    child: Text('9_Light_lets you in',style: TextStyle(
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
