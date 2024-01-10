import 'package:ads_test/features/cartpage/view/cart_page_main.dart';
import 'package:ads_test/features/diabetes_care/widget/banner_slider_product.dart';
import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:ads_test/utils/custom_divider.dart';
import 'package:ads_test/utils/custom_line_progress.dart';
import 'package:ads_test/widgets/custom_appbar.dart';
import 'package:ads_test/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.defaultAppBar(actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_outlined,
            size: 24.dp,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_bag_outlined,
            size: 24.dp,
          ),
        ),
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sugar Free Gold Low Calories",
                style: blackBoldTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Etiam mollis metus non purus ",
                style: greyTextStyle.copyWith(fontSize: 14),
              ),
              SizedBox(height: 2.h),
              const BannerSliderProduct(),
              SizedBox(height: 2.h),
              const MainContentDetailProduct(),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}

class MainContentDetailProduct extends StatelessWidget {
  const MainContentDetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rp 56.000",
                  style: blackBoldTextStyle.copyWith(
                    fontSize: 18.dp,
                  ),
                ),
                Text(
                  "Etiam mollis ",
                  style: greyTextStyle.copyWith(
                    fontSize: 14.dp,
                  ),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: primaryColor,
                  ),
                ),
                Text(
                  "Add to cart",
                  style: primaryTextStyle.copyWith(
                    fontSize: 14.dp,
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 1.h),
        const Divider(),
        SizedBox(height: 1.h),
        Text(
          "Package Size",
          style: blackTextStyle.copyWith(
            fontSize: 16.dp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 1.h),
        Row(
          children: List.generate(3, (index) {
            return Row(
              children: [
                packageContainerWidget(),
                SizedBox(width: 3.w),
              ],
            );
          }),
        ),
        SizedBox(height: 1.h),
        Text(
          "Product Details",
          style: blackTextStyle.copyWith(
            fontSize: 16.dp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
          style: greyTextStyle.copyWith(fontSize: 14.dp),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 3.h),
        Text(
          "Rating and Reviews",
          style: blackTextStyle.copyWith(
            fontSize: 16.dp,
            fontWeight: FontWeight.w600,
          ),
        ),
        ratingWidget(),
        SizedBox(height: 5.h),
        commentWidget(),
        SizedBox(height: 10.h),
        CustomButton(
          elevation: 8,
          width: MediaQuery.of(context).size.width,
          height: 6.h,
          borderColor: primaryColor,
          borderWidth: 0,
          textStyle: whiteTextStyle.copyWith(
              fontSize: 16.dp, fontWeight: FontWeight.w700),
          text: 'Go To Cart'.toUpperCase(),
          onPressed: () {
            Get.to(const CartPageMain());
          },
          backgroundColor: primaryColor,
        ),
      ],
    );
  }
}

Widget packageContainerWidget() {
  return Container(
    height: 10.h,
    width: 20.w,
    decoration: BoxDecoration(
      border: Border.all(color: greyColor),
      color: greyColor.withOpacity(0.2),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Rp 100.000",
          style: blackBoldTextStyle.copyWith(
            fontSize: 10.dp,
          ),
        ),
        Text(
          "110 pellets",
          style: greyTextStyle.copyWith(
            fontSize: 12.dp,
          ),
        ),
      ],
    ),
  );
}

Widget ratingWidget() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.h),
                child: Text(
                  "4.4",
                  style: blackBoldTextStyle.copyWith(
                    fontSize: 33.dp,
                  ),
                ),
              ),
              SizedBox(width: 2.w),
              Icon(
                Icons.star,
                color: const Color(0xFFFFC000),
                size: 33.dp,
              ),
            ],
          ),
          SizedBox(height: 5.h),
          SizedBox(
            width: 30.w,
            child: Text(
              "923 Ratings and 257 Reviews",
              style: greyTextStyle.copyWith(
                fontSize: 14.dp,
              ),
            ),
          ),
        ],
      ),
      SizedBox(width: 2.w),
      CustomDivider(
        type: DividerType.vertical,
        length: 18.h,
      ),
      SizedBox(width: 2.w),
      Column(
        children: List.generate(5, (index) => ratingProgress()),
      )
    ],
  );
}

Widget ratingProgress() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 1.h),
        child: Text(
          '4',
          style: greyTextStyle.copyWith(fontSize: 14.dp),
        ),
      ),
      const Icon(
        Icons.star,
        color: Color(0xFFFFC000),
      ),
      SizedBox(width: 1.h),
      const CustomLineProgress(),
      SizedBox(width: 1.h),
      Text(
        '67%',
        style: greyTextStyle.copyWith(fontSize: 14.dp),
      ),
    ],
  );
}

Widget commentWidget() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Lorem Hoffman",
            style: blackTextStyle.copyWith(fontSize: 14.dp),
          ),
          Text(
            "05- oct 2023",
            style: greyTextStyle.copyWith(fontSize: 14.dp),
          ),
        ],
      ),
      Row(
        children: [
          const Icon(
            Icons.star,
            color: Color(0xFFFFC000),
          ),
          Text(
            '4.2',
            style: greyTextStyle.copyWith(fontSize: 14.dp),
          ),
        ],
      ),
      SizedBox(height: 1.h),
      Text(
        "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ",
        style: greyTextStyle.copyWith(fontSize: 14.dp),
        textAlign: TextAlign.justify,
      ),
    ],
  );
}
