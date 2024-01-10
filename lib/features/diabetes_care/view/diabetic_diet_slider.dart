import 'package:ads_test/features/diabetes_care/widget/diabetic_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class DiabeticDietSlider extends StatelessWidget {
  const DiabeticDietSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20.h,
        child: ListView.builder(
          itemCount: listDiabetic.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  child: DiabeticCard(
                    image: listDiabetic[index].image,
                    titleProduct: listDiabetic[index].titleProduct,
                  ),
                ),
              ],
            );
          },
        ));
  }
}
