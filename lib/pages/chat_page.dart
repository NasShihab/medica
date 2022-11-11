import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../pages_widget/chart_page_widget.dart';
import '../reusable_widget/color_custom.dart';
import '../reusable_widget/sized_box.dart';
import '../reusable_widget/appbar_custom.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                child: ListView(
                  children: [
                    myChatBoxOut(),
                    height20(),
                    myChatBoxIn(),
                    height20(),
                    myChatBoxOut(),
                    height20(),
                    myChatBoxIn(),
                    height20(),
                    myChatBoxIn(),
                    height20(),
                    myChatBoxOut(),
                    height20(),
                    myChatBoxIn(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: customAppBar(context,
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
      bottomSheet: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        padding: EdgeInsets.symmetric(vertical: 5.h),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: myGrey,
                  borderRadius: BorderRadius.circular(35.0),
                ),
                child: Row(
                  children: [
                    IconButton(
                      visualDensity: VisualDensity.standard,
                      icon: Icon(
                        Icons.face,
                        color: myPinkAccent,
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
                    width20(),
                    PopupMenuButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.r))),
                      offset: Offset(50.w, -120.h),
                      position: PopupMenuPosition.over,
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myCircleIcon(myIcon: Icons.book_online, myBackgroundColor: Colors.orange, myIconText: 'Document'),
                              myCircleIcon(myIcon: Icons.image_outlined, myBackgroundColor: Colors.indigo, myIconText: 'Gallery'),
                              myCircleIcon(myIcon: Icons.audiotrack, myBackgroundColor: Colors.pink, myIconText: 'Audio'),
                            ],
                          ),
                        ),
                      ],
                      child: Icon(
                        Icons.attach_file,
                        color: Colors.black,
                        size: 24.sp,
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.centerLeft,
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
              backgroundColor: myPinkAccent,
              foregroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Consultation_Ended');
                },
                icon: Icon(
                  Icons.mic,
                  size: 30.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
