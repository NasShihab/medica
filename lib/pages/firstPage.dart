import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: camel_case_types
class firstPage extends StatelessWidget {
  const firstPage({Key? key}) : super(key: key);

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
                      Navigator.pushNamed(context, '/welcome');
                    },
                    child: Text('9_Light_lets you in',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign_up');
                    },
                    child: Text('10_Light_sign up blank form',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text('13_Light_sign in blank form',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/fill_profile');
                    },
                    child: Text('16_Light_fill your profile blank form',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/create_pin');
                    },
                    child: Text('18_Light_create new PIN',style: TextStyle(
                      fontSize: 30.sp,
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/fingerprint');
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
