import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/routes.dart';

import 'my_theme_data.dart';

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
        routes: myRoutes,
        theme: myThemeData(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(428, 926),
    );
  }
}