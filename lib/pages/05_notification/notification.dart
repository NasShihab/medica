// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myColor.dart';
import 'package:medica/pages/Z_other/myCuston_Appbar.dart';

import 'listItem_notification.dart';

class notification extends StatelessWidget {
  notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: mycustomAppBar(
        context,
        appBarTitle: 'Notification',
        actionBarIcons: IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert, color: Colors.black, size: 24.sp),
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: tdata.length,
              itemBuilder: (context, index) {
                final tdat = tdata[index];

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        isThreeLine: true,
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 30.r,
                          backgroundImage: AssetImage('${tdat.nLeading}'),
                        ),
                        title: Text(
                          '${tdat.nTitle}',
                          style: TextStyle(fontSize: 22.sp),
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          '${tdat.nSubtitle}',
                          style: TextStyle(fontSize: 16.sp),
                        ),

                        //Todo - Make New notification for newest only
                        trailing: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8.r)), color: myBlueAccent),
                            child: Text(
                              '${tdat.nTrailing}',
                              style: TextStyle(fontSize: 16.sp, color: Colors.white),
                            )),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Text(
                            'TextingStory iPhone and Android app : write a text conversation, create a video from your story, watch your creation and share it !',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 16.sp, color: Colors.black54),
                          )),
                    ],
                  ),
                );
              })),
    );
  }
}
