import 'package:ads_test/features/diabetes_care/view/diabetes_care_page.dart';
import 'package:ads_test/features/home/view/banner_home.dart';
import 'package:ads_test/features/home/view/best_deals_slider.dart';
import 'package:ads_test/features/home/view/top_categories_slider.dart';
import 'package:ads_test/features/home/view/featured_brands_slider.dart';
import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:ads_test/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFF),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // background
            Container(
              height: 30.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  primaryColor,
                  const Color(0xFF3D50E7),
                  //
                ]),
                // color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.dp),
                  bottomRight: Radius.circular(25.dp),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
              child: Column(
                children: [
                  headerHome(),
                  SizedBox(height: 3.h),
                  searchBar(),
                  SizedBox(height: 3.h),
                  homeContent(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget headerHome() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 22.dp,
            child: Padding(
              padding: EdgeInsets.all(5.dp),
              child: Image.asset('assets/icons/google_icon.png'),
            ),
          ),
          Row(
            children: [
              Icon(Icons.notifications_outlined,
                  size: 3.5.h, color: whiteColor),
              SizedBox(width: 3.w),
              Icon(Icons.shop_outlined, size: 3.5.h, color: whiteColor),
            ],
          )
        ],
      ),
      SizedBox(height: 4.h),
      Text(
        "Hi, Lorem",
        style: whiteTextStyle.copyWith(
            fontSize: 24.dp, fontWeight: FontWeight.w700),
      ),
      Text(
        "Welcome to Apotech",
        style: whiteTextStyle.copyWith(
            fontSize: 16.dp, fontWeight: FontWeight.w300),
      )
    ],
  );
}

Widget searchBar() {
  return Container(
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
      BoxShadow(
        color: primaryColor.withOpacity(0.2),
        offset: const Offset(1, 1),
        blurRadius: 20,
      ),
    ]),
    child: Center(
      child: CustomTextField(
        prefixIcon: Icon(
          Icons.search,
          color: greyColor,
          size: 20.dp,
        ),
        fillColor: whiteColor,
        hint: "Search Medicine & Healthcare products",
        hintStyle: TextStyle(fontSize: 12.dp, color: greyColor),
        borderWidth: 0,
      ),
    ),
  );
}

Widget homeContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Top Categories",
        style: blackTextStyle.copyWith(
          fontSize: 16.dp,
          fontWeight: FontWeight.w600,
        ),
      ),
      // SizedBox(height: 3.h),
      const CategoriesSlider(),
      SizedBox(height: 4.h),
      const BannerHome(),
      SizedBox(height: 4.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Deals of the Day",
            style: blackTextStyle.copyWith(
              fontSize: 16.dp,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextButton(
            onPressed: () {
              Get.to(DiabetesCarePage());
            },
            child: Text(
              'More',
              style: primaryTextStyle,
            ),
          ),
        ],
      ),
      const BestDealsSlider(),
      SizedBox(height: 4.h),
      Text(
        "Featured Brands",
        style: blackTextStyle.copyWith(
          fontSize: 16.dp,
          fontWeight: FontWeight.w600,
        ),
      ),
      const FeaturedBrandsSlider(),
    ],
  );
}
