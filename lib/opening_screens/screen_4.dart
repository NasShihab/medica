import 'package:flutter/material.dart';
import 'package:medica/reusable_widget/button_custom.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/screen_4.png',
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
          myOnPressed: () {
            Navigator.pushNamed(context, '/screen_5');
          },
          buttonTitle: 'Next'),
    );
  }
}
