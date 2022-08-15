import 'package:flutter/material.dart';

class front_Page extends StatelessWidget {
  const front_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/welcome');
      },
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/background.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Container(),
          ),
        ),
      ),
    );
  }
}
