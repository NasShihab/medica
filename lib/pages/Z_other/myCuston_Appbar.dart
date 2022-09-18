import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar mycustomAppBar(BuildContext context,
        {required String appBarTitle,
         Widget actionBarIcons = const SizedBox.shrink(),
          dynamic leadIcon = Icons.arrow_back,
        }) =>
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
      actions: [actionBarIcons],
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            leadIcon,
            size: 30.sp,
            color: Colors.black,
          )),
    );

