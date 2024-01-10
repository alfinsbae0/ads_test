import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    this.linearColors,
    this.catTitle,
    this.icon,
  });

  final List<Color>? linearColors;
  final String? catTitle;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.h,
      width: 18.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            offset: const Offset(1, 5),
            color: primaryColor.withOpacity(0.1),
          )
        ],
        color: whiteColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 6.h,
              width: 6.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: linearColors!),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(
                icon!,
                scale: 3.dp,
              ),
            ),
            SizedBox(height: 1.h),
            Text(
              catTitle!,
              style: blackTextStyle.copyWith(fontSize: 11.dp),
            )
          ],
        ),
      ),
    );
  }
}
