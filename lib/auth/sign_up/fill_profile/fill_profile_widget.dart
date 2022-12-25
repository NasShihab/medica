import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Gendar',
            style: TextStyle(fontSize: 14.sp, color: Colors.grey[600]),
          ),
          SizedBox(
            height: 50.h,
            width: 100.w,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  isExpanded: true,
                  value: selectedValue, //ref.watch(filterMenuProvider),
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  //<String>['Relevance', 'View', 'Latest']
                  items: ['', 'Male', 'Female']
                      .map((String value) => DropdownMenuItem<String>(
                          value: value, child: Text(value)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value.toString();
                    });
                    // ref.read(filterMenuProvider.notifier).update(sortby);
                  } //ref.read(filterMenuProvider.notifier).update(sortby);
                  ),
            ),
          )
        ],
      ),
    );
  }
}
