import 'package:ads_test/features/onboarding_screen/view/onboarding_page.dart';
import 'package:ads_test/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class BannerSliderProduct extends StatelessWidget {
  const BannerSliderProduct({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Column(
      children: [
        Container(
          height: 20.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: lightGreyColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              'assets/images/product3.png',
              fit: BoxFit.contain,
              scale: 1.dp,
              width: 300.w,
              height: 100.h,
            ),
          ),
        ),
        SizedBox(height: 1.h),
        BuildDots(currentIndex: currentIndex),
      ],
    );
  }
}
