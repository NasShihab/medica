import 'package:flutter/material.dart';
import 'package:medica/reusable_widget/button_custom.dart';

class Screen6 extends StatelessWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/screen_6.png',
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
          myOnPressed: () {
            Navigator.pushNamed(context, '/screen_7');
          },
          buttonTitle: 'Next'),
    );
  }
}