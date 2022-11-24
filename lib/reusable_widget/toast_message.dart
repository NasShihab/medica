import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'color_custom.dart';

dynamic toastMessage({
  required String message,
}) =>
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 1,
      backgroundColor: myPinkAccent,
      textColor: Colors.white,
      fontSize: 14.0,
    );
