import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/04_Home/HomePage.dart';
import 'package:medica/pages/05_notification/notification.dart';
import 'package:medica/pages/front_Page.dart';
import '01_login/login.dart';
import '01_login/welcome.dart';
import '02_signUp/CreatePin.dart';
import '02_signUp/FillProfile.dart';
import '02_signUp/SignUp.dart';
import '02_signUp/fingerprint.dart';
import '03_forget_password/CreatePassword.dart';
import '03_forget_password/ForgetPassword.dart';
import '03_forget_password/OtpCode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) => MaterialApp(
        initialRoute: '/',
        routes: {
          '/' : (context) => const front_Page(),
          '/welcome' : (context) => const welcome(),
          '/login' : (context) => const login(),
          '/sign_up' : (context) => const SignUp(),
          '/fill_profile' : (context) => const FillProfile(),
          '/fingerprint' : (context) => const fingerprint(),
          '/create_pin' : (context) => const CreatePin(),
          '/forget_password' : (context) => const ForgetPassword(),
          '/OtpCode' : (context) => const OtpCode(),
          '/CreatePassword' : (context) => const CreatePassword(),
          '/HomePage' : (context) => const HomePage(),
          '/notification' : (context) =>  notification(),
        },
        theme: ThemeData(fontFamily: 'Roboto'),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(428, 926),
    );
  }
}