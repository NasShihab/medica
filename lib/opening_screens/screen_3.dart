import 'package:flutter/material.dart';
import 'package:medica/reusable_widget/button_custom.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/screen_3.png',
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myFullCustomButton(
          myOnPressed: () {
            Navigator.pushNamed(context, '/screen_4');
          },
          buttonTitle: 'Next'),
    );
  }
}
