import 'package:ads_test/features/cartpage/widget/cart_item_widget.dart';
import 'package:ads_test/features/cartpage/widget/summary_widget.dart';
import 'package:ads_test/features/checkout/view/checkout_main_page.dart';
import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:ads_test/widgets/custom_appbar.dart';
import 'package:ads_test/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

class CartPageMain extends StatelessWidget {
  const CartPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.pageAppBar(title: 'Your Cart'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // head
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2 Items in your cart',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: primaryColor,
                        ),
                        Text(
                          "Add More",
                          style: primaryTextStyle.copyWith(
                            fontSize: 14.dp,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 1.h),
                // cart item
                const CartItemWidget(),
                SizedBox(height: 1.h),
                const CartItemWidget(),
                SizedBox(height: 2.h),
                const CouponWidget(),
                SizedBox(height: 2.h),
                Text(
                  "Payment Summary",
                  style: blackTextStyle.copyWith(
                    fontSize: 16.dp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 2.h),
                SummaryWidget(),
              ],
            ),
            Column(
              children: [
                CustomButton(
                  elevation: 8,
                  width: MediaQuery.of(context).size.width,
                  height: 6.h,
                  borderColor: primaryColor,
                  borderWidth: 0,
                  textStyle: whiteTextStyle.copyWith(
                      fontSize: 16.dp, fontWeight: FontWeight.w700),
                  text: 'Place Order @ Rp 185.000',
                  onPressed: () {
                    Get.to(const CheckoutMainPage());
                  },
                  backgroundColor: primaryColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CouponWidget extends StatelessWidget {
  const CouponWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: blackColor.withOpacity(0.1),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.discount_outlined,
                  color: blackColor,
                ),
                SizedBox(width: 2.w),
                Text(
                  "1 Coupon applied",
                  style: greenTextStyle.copyWith(fontSize: 14.dp),
                )
              ],
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.cancel_outlined))
          ],
        ),
      ),
    );
  }
}
