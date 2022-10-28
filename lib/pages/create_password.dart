import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Create New Password',style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HomePage');
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 250.h,
                  child: CircleAvatar(
                    radius: 150.r,
                    backgroundImage:
                    const AssetImage('assets/images/phone.jpg'),
                  ),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Create your new password',
                        style: TextStyle(fontSize: 18.sp,),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    myPasswordField(
                        ico: const Icon(Icons.lock),
                        htext: "Enter New Password",
                        sfico: const Icon(Icons.visibility_off)),
                    SizedBox(height: 10.h),
                    myPasswordField(
                        ico: const Icon(Icons.lock),
                        htext: "Repeat Your Password",
                        sfico: const Icon(Icons.visibility_off)),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 90.w),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      value: false,
                      onChanged: (bool? value) {},
                      title: const Text('Remember Me'),
                    ),
                  ],
                ),
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
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 14.h)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r))),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(fontSize: 20.sp),
                      )),
                ),
              ],
            ),
          )),
    );
  }
  // My Shortcut
  // My Shortcut
  Widget myPasswordField(
      {required Icon ico, required Icon sfico, required String htext}) =>
      SizedBox(
        height: 50.h,
        width: double.infinity,
        child: TextField(
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
              prefixIcon: ico,
              suffixIcon: sfico,
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
      );
}

