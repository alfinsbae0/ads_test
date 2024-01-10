import 'package:ads_test/features/home/widget/featured_brands_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class FeaturedBrandsSlider extends StatelessWidget {
  const FeaturedBrandsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20.h,
        child: ListView.builder(
          itemCount: listfeaturedBrands.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  child: FeaturedBrandsCard(
                    image: listfeaturedBrands[index].image,
                    titleBrands: listfeaturedBrands[index].titleBrands,
                  ),
                ),
              ],
            );
          },
        ));
  }
}
