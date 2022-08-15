// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/Z_other/myColor.dart';

class notification extends StatelessWidget {
  notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Icon(
              Icons.more_horiz_rounded,
              color: Colors.black,
              size: 35.sp,
            ),
          )
        ],
        title: const Text(
          'Notification',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HomePage');
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: tdata.length,
              itemBuilder: (context, index) {
                final tdat = tdata[index];

                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 8.h),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.r)),
                              color: myBlueAccent),
                          child: Text('${tdat.nTrailing}',
                              style: TextStyle(fontSize: 16.sp, color: Colors.white),
                          )
                        ),
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Text(
                            'TextingStory iPhone and Android app : write a text conversation, create a video from your story, watch your creation and share it !',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 16.sp, color: Colors.black54),
                          )),
                    ],
                  ),
                );
              })),
    );
  }

  List tdata = [
    txdata('assets/images/profile2.png', 'Appointment Cancel',
        'Today | 9.30 AM', 'New'),
    txdata('assets/images/facebook.png', 'New Service Available',
        '14 December | 9.30 AM', 'New'),
    txdata('assets/images/profile2.png', 'Appointment Cancel',
        '25 October | 9.30 AM', 'New'),
  ];
}

class txdata {
  final String nTrailing;
  final String nLeading;
  final String nTitle;
  final String nSubtitle;

  txdata(
    this.nLeading,
    this.nTitle,
    this.nSubtitle,
    this.nTrailing,
  );
}
