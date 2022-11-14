import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/screen_3');
          },
          child: const Image(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/screen_2.png',
            ),
          ),
        ),
      ),
    );
  }
}
