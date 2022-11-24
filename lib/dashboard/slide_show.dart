import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SlideShow extends StatelessWidget {
  const SlideShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: 5,
            itemBuilder: (context, index, realindex) {
              return Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.r),
                    child: Image.asset(
                      'assets/images/slide1.jpg',
                      fit: BoxFit.fill,
                    )),
              );
            },
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * .20,
              viewportFraction: 1,
              enableInfiniteScroll: true,
            )),
      ],
    );
  }
}
