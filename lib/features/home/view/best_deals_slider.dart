import 'package:ads_test/features/home/widget/best_deals_contents.dart';
import 'package:ads_test/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class BestDealsSlider extends StatelessWidget {
  const BestDealsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 35.h,
        child: ListView.builder(
          itemCount: bestDealsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  child: CustomProductCard(
                    image: bestDealsList[index].image,
                    titleProduct: bestDealsList[index].titleProduct,
                    priceProduct: bestDealsList[index].priceProduct,
                    rating: bestDealsList[index].rating,
                  ),
                ),
              ],
            );
          },
        ));
  }
}
