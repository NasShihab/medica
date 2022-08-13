import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../firstPage.dart';

class forget_password extends StatelessWidget {
  const forget_password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Forget Your Password',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const firstPage()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 120.r,
                  backgroundColor: Colors.transparent,
                  child: Image.asset('assets/images/phone_security.png'),
                ),
                Flexible(
                  child: Text(
                    'Select which contact details should we use to reset your password',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40.r,
                        backgroundColor: Colors.transparent,
                        child: Icon(Icons.message_rounded,size: 40.sp ,color: Colors.blueAccent,),
                      ),
                      SizedBox(width: 10.w),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        child: Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('via SMS', style: TextStyle(fontSize: 18.sp, color: Colors.grey),),
                              SizedBox(width: 10.w),
                              Text("017xxxxx256", style: TextStyle(fontSize: 18.sp, color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40.r,
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.mail,size: 40.sp ,color: Colors.blueAccent,),
                    ),
                    SizedBox(width: 10.w),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      child: Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('via Email', style: TextStyle(fontSize: 18.sp, color: Colors.grey),),
                            SizedBox(width: 10.w),
                            Text("nas.sh***@gmail.com", style: TextStyle(fontSize: 18.sp, color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //TextButton
                SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.r))
                              ),
                              content: SizedBox(
                                height: 500.h,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                    Flexible(
                                      child: CircleAvatar(
                                        radius: 120.r,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage: const AssetImage('assets/images/profile2.png'),
                                      ),
                                    ),
                                    Flexible(
                                      child: Text('Congratulations', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.sp, color: Colors.blueAccent[700]
                                      ),),
                                    ),
                                    Flexible(
                                      child: Text('Your account is ready to use. You will be redirected to HomePage',
                                        style: TextStyle(color: Colors.grey,fontSize: 18.sp),
                                        textAlign: TextAlign.center,),
                                    ),
                                    Flexible(
                                      child: CircleAvatar(
                                          radius: 40.r,
                                          backgroundColor: Colors.transparent,
                                          backgroundImage: const AssetImage('assets/images/loading.png')),
                                    ),
                                  ],
                                ),
                              ),
                            ));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent[700]),
                        foregroundColor:
                        MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 14.h)),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(50.r))),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(fontSize: 18.sp),
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
