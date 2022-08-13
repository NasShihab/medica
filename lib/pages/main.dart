import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/login/login.dart';
import 'package:medica/pages/login/welcome.dart';
import 'package:medica/pages/signUp/create_pin.dart';
import 'package:medica/pages/signUp/fill_profile.dart';
import 'package:medica/pages/signUp/fingerprint.dart';
import 'package:medica/pages/signUp/sign_up.dart';

import 'firstPage.dart';

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
          '/' : (context) => const firstPage(),
          '/welcome' : (context) => const welcome(),
          '/login' : (context) => const login(),
          '/sign_up' : (context) => const sign_up(),
          '/fill_profile' : (context) => const fill_profile(),
          '/fingerprint' : (context) => const fingerprint(),
          '/create_pin' : (context) => const create_pin(),
        },
        theme: ThemeData(fontFamily: 'Roboto'),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(428, 926),
    );
  }
}
