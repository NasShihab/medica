import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar mycustomAppBar(BuildContext context,
        {required String appBarTitle, required Widget action_Icons}) =>
    AppBar(
      title: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          appBarTitle,
          style: TextStyle(
              fontSize: 24.sp,
              color: Colors.black),
        ),
      ),
      actions: [
        action_Icons
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30.sp,
            color: Colors.black,
          )),
    );
