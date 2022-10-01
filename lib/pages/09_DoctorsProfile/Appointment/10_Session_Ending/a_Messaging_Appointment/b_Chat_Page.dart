// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myColor.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';
import 'package:medica/pages/Z_other/mySizedBox.dart';

class Chat_Page extends StatelessWidget {
  const Chat_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mycustomAppBar(context,
          appBarTitle: 'Dr Angela D Consta',
          actionBarIcons: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                IconButton(
                    visualDensity: VisualDensity.compact,
                    onPressed: () {},
                    icon: Icon(
                      Icons.search_sharp,
                      color: Colors.black,
                      size: 30.sp,
                    )),
                PopupMenuButton(
                  position: PopupMenuPosition.under,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.black,
                            size: 20.sp,
                          ),
                          width5(),
                          Text(
                            'Clear chat',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.ios_share_outlined,
                            color: Colors.black,
                            size: 20.sp,
                          ),
                          width5(),
                          Text(
                            'Export chat',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                  child: Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.black,
                    size: 30.sp,
                  ),
                ),
              ],
            ),
          )),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                child: ListView(
                  children: [
                    myChatBox_Out(),
                    height20(),
                    myChatBox_In(),
                    height20(),
                    myChatBox_Out(),
                    height20(),
                    myChatBox_In(),
                    height20(),
                    myChatBox_In(),
                    height20(),
                    myChatBox_Out(),
                    height20(),
                    myChatBox_In(),
                  ],
                ),
              ),
              height30(),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: myBluegrey,
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              visualDensity: VisualDensity.standard,
                              icon: Icon(
                                Icons.face,
                                color: Colors.black,
                                size: 24.sp,
                              ),
                              onPressed: () {},
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type a message',
                                  hintStyle: TextStyle(fontSize: 18.sp),
                                ),
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              visualDensity: VisualDensity.standard,
                              icon: Icon(
                                Icons.attach_file,
                                color: Colors.black,
                                size: 24.sp,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              visualDensity: VisualDensity.standard,
                              icon: Icon(
                                Icons.photo_camera,
                                color: Colors.black,
                                size: 24.sp,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    width10(),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: myBlueAccent,
                      foregroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          size: 30.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              height15(),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget myChatBox_Out({
  String my_text = 'the definition of chat refers to talking to other people who are using the internet at the same time you are.',
  double my_text_fontSize = 18,
  double myBorderText_borderRadius = 20,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 60.w),
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
            decoration: BoxDecoration(
              color: myBlueAccent,
              borderRadius: BorderRadius.all(Radius.circular(myBorderText_borderRadius.r)),
              border: Border.all(color: Colors.transparent),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    my_text,
                    style: TextStyle(color: Colors.white, fontSize: my_text_fontSize.sp),
                  ),
                ),
                width10(),
                Text(
                  '16:00',
                  style: TextStyle(color: Colors.white, fontSize: 14.sp),
                ),
                width5(),
                Icon(
                  Icons.done_all,
                  color: Colors.white,
                  size: 18.sp,
                )
              ],
            ),
          ),
        ),
      ],
    );

Widget myChatBox_In({
  String my_text = 'the definition of chat refers to talking to other people who are using the internet at the same time you are.',
  double my_text_fontSize = 18,
  double myBorderText_borderRadius = 20,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 60.w),
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
            decoration: BoxDecoration(
              color: myBluegrey,
              borderRadius: BorderRadius.all(Radius.circular(myBorderText_borderRadius.r)),
              border: Border.all(color: Colors.transparent),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    my_text,
                    style: TextStyle(color: Colors.black, fontSize: my_text_fontSize.sp),
                  ),
                ),
                width10(),
                Text(
                  '16:00',
                  style: TextStyle(color: Colors.black, fontSize: 14.sp),
                ),
              ],
            ),
          ),
        ),
      ],
    );
