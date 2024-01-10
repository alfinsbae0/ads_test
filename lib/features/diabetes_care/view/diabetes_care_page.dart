import 'package:ads_test/features/diabetes_care/view/diabetic_diet_slider.dart';
import 'package:ads_test/features/diabetes_care/widget/list_all_products.dart';
import 'package:ads_test/features/home/view/banner_home.dart';
import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:ads_test/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class DiabetesCarePage extends StatelessWidget {
  const DiabetesCarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: CustomAppBar.pageAppBar(title: 'Diabetes Care'),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BannerHome(),
                SizedBox(height: 2.h),
                Text(
                  "Diabetic Diet",
                  style: blackTextStyle.copyWith(
                    fontSize: 16.dp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const DiabeticDietSlider(),
                SizedBox(height: 2.h),
                Text(
                  "All Products",
                  style: blackTextStyle.copyWith(
                    fontSize: 16.dp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 2.h),
                ListAllProducts(),
              ],
            ),
          ),
        ));
  }
}
