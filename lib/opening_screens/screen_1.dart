import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reusable_widget/sized_box.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

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
                    //color: Colors.white,
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
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/screen_2');
        },
        child: Image(
          height: 70.h,
          width: 70.w,
          image: const AssetImage('assets/images/Loading.gif'),
        ),
      ),
    );
  }
}
