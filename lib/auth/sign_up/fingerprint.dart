import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/reusable_widget/color_custom.dart';
import 'package:medica/reusable_widget/button_custom.dart';
import '../../reusable_widget/appbar_custom.dart';

class Fingerprint extends StatelessWidget {
  const Fingerprint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context, appBarTitle: 'Set Your Fingerprint'),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height * .80,
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
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        children: [
          Expanded(
              child: myFullCustomButton(
            buttonTitle: 'Skip',
            buttonBackgroundColor: myGrey,
            buttonBorderColor: myGrey,
            buttonForgroundColor: myPinkAccent,
            myOnPressed: () {},
          )),
          Expanded(
            child: myFullCustomButton(
              buttonTitle: 'Continue',
              myOnPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.r))),
                          content: SizedBox(
                            height: 500.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: CircleAvatar(
                                    radius: 120.r,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: const AssetImage('assets/images/profile2.png'),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'Congratulations',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp, color: myPinkAccent),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'Your account is ready to use. You will be redirected to HomePage',
                                    style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(context, '/bottom_bar_page');
                                    },
                                    child: CircleAvatar(
                                      radius: 40.r,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: const AssetImage('assets/images/loading.png'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
