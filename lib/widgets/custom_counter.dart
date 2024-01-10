import 'package:ads_test/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CustomCounter extends StatelessWidget {
  const CustomCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: 25.w,
      decoration: BoxDecoration(
          color: const Color(0XFFF2F4FF),
          // border: Border.all(color: greyColor),
          borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.remove_circle_rounded,
              size: 25.dp,
              color: Color(0xffDFE3FF),
            ),
          ),
          Text(
            "1",
            style: blackTextStyle.copyWith(fontSize: 14.dp),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle_rounded,
              size: 25.dp,
              color: Color(0xFFA0ABFF),
            ),
          ),
        ],
      ),
    );
  }
}
