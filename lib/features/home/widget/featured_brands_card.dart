import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class FeaturedBrandsCard extends StatelessWidget {
  const FeaturedBrandsCard(
      {super.key, required this.titleBrands, required this.image});

  final String titleBrands;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
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
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              image,
            ),
          ),
        ),
        SizedBox(height: 2.h),
        SizedBox(
          width: 20.w,
          child: Text(
            titleBrands,
            style: secondaryTextStyle.copyWith(
              fontSize: 14.dp,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

class FeaturedBrandsList {
  String titleBrands;
  String image;

  FeaturedBrandsList({
    required this.titleBrands,
    required this.image,
  });
}

List<FeaturedBrandsList> listfeaturedBrands = [
  FeaturedBrandsList(
    titleBrands: "Himalaya Wellness",
    image: 'assets/icons/himalaya_logo.png',
  ),
  FeaturedBrandsList(
    titleBrands: "Accu-Chek",
    image: 'assets/icons/accu_logo.png',
  ),
  FeaturedBrandsList(
    titleBrands: "Vlcc",
    image: 'assets/icons/vlcc_logo.png',
  ),
  FeaturedBrandsList(
    titleBrands: "Protinex",
    image: 'assets/icons/protinex_logo.png',
  ),
];
