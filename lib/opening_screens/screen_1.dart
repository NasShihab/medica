import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reusable_widget/sized_box.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3),
        (() => Navigator.pushNamed(context, '/screen_2')));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  foregroundColor: Colors.white,
                  radius: 40.r,
                  child: Icon(
                    Icons.medical_services_rounded,
                    size: 40.sp,
                  )),
              width20(),
              Text(
                'Medica',
                style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Image(
        height: 70.h,
        width: 70.w,
        image: const AssetImage('assets/images/Loading.gif'),
      ),
    );
  }
}
