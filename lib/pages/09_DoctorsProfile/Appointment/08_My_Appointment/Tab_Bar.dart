import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar myTabBar(BuildContext context,
    {required String appBarTitle2,
      required Widget action_Icons2,
      required Icon leadingIcon2}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      bottom: TabBar(
          labelColor: Colors.black,
          labelStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          tabs: const [
            Tab(text: 'Upcoming'),
            Tab(text: 'Completed'),
            Tab(text: 'Canceled'),
          ]),
      title: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          appBarTitle2,
          style: TextStyle(
              fontSize: 24.sp,
              color: Colors.black),
        ),
      ),
      actions: [action_Icons2],
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: leadingIcon2,
      ),
    );