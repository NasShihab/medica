import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../pages/firstPage.dart';


class fingerprint extends StatelessWidget {
  const fingerprint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Set Your Fingerprint',
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
            Text(
              'Add a Fingerprint to make your account more secure',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.sp),
            ),
            CircleAvatar(
              radius: 150.r,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/images/fingerprint.png'),
            ),
            Text(
              'Please put your finger on the fingerprint scanner to get started',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.sp),
            ),
            //TextButton
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.lightBlue[100]),
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
                          'Skip',
                          style: TextStyle(
                              fontSize: 18.sp, color: Colors.blueAccent[700]),
                        )),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
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
                                          backgroundImage: AssetImage('assets/images/profile2.png'),
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
                                            backgroundImage: AssetImage('assets/images/loading.png')),
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
            ),
          ],
        ),
      )),
    );
  }
}
