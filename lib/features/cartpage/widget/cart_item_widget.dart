import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:ads_test/widgets/custom_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // image
            Container(
              height: 12.h,
              width: 20.w,
              decoration: BoxDecoration(
                border: Border.all(color: blackColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/diet_product_example2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // item
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sugar free gold",
                  style: blackTextStyle.copyWith(fontSize: 14.dp),
                ),
                Text(
                  "bottle of 500 pellets",
                  style: greyTextStyle.copyWith(
                    fontSize: 13.dp,
                  ),
                ),
                SizedBox(height: 3.h),
                Text(
                  "Rp 25.000",
                  style: blackBoldTextStyle.copyWith(
                    fontSize: 16.dp,
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cancel_outlined),
                ),
                SizedBox(height: 2.5.h),
                const CustomCounter(),
              ],
            )
          ],
        ),
        SizedBox(height: 1.h),
        Divider(),
      ],
    );
  }
}
