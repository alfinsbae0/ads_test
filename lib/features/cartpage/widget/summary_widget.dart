import 'package:ads_test/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total", style: greyTextStyle.copyWith(fontSize: 14.dp)),
            Text("Rp 228.800", style: blackTextStyle.copyWith(fontSize: 14.dp)),
          ],
        ),
        SizedBox(height: 1.5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Items Discount",
                style: greyTextStyle.copyWith(fontSize: 14.dp)),
            Text("- Rp 28.800",
                style: blackTextStyle.copyWith(fontSize: 14.dp)),
          ],
        ),
        SizedBox(height: 1.5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Coupon Discount",
                style: greyTextStyle.copyWith(fontSize: 14.dp)),
            Text("- Rp 15.800",
                style: blackTextStyle.copyWith(fontSize: 14.dp)),
          ],
        ),
        SizedBox(height: 1.5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping", style: greyTextStyle.copyWith(fontSize: 14.dp)),
            Text("Free", style: blackTextStyle.copyWith(fontSize: 14.dp)),
          ],
        ),
        SizedBox(height: 2.5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total", style: blackTextStyle.copyWith(fontSize: 14.dp)),
            Text("Rp 185.000",
                style: blackBoldTextStyle.copyWith(fontSize: 16.dp)),
          ],
        ),
      ],
    );
  }
}
