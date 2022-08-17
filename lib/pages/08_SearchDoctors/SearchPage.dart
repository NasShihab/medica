import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(

              borderRadius: BorderRadius.circular (45),
            ),
            hintText: 'Search Doctors Here',
          ),
        ),
      ),
      body: SafeArea(
        child: Container(),
      )
    );
  }
}
