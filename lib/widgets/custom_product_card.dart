import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    super.key,
    this.height,
    this.width,
    required this.image,
    this.imageBackgroundColor,
    required this.rating,
    required this.priceProduct,
    required this.titleProduct,
    this.borderColor,
    this.badge,
  });

  final double? height;
  final double? width;
  final Color? imageBackgroundColor;
  final String image;
  final String titleProduct;
  final String priceProduct;
  final String rating;
  final Color? borderColor;
  final Widget? badge;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 35.h,
      width: width ?? 46.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            spreadRadius: 3,
            blurRadius: 12,
            offset: const Offset(0, 10),
            color: greyColor.withOpacity(0.1),
          )
        ],
        color: whiteColor,
        border: Border.all(color: borderColor ?? Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 20.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: imageBackgroundColor ?? const Color(0xFFEEEEF0),
                  // border: Border.all(color: blackColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(image),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
                child: Text(
                  titleProduct,
                  style: blackTextStyle.copyWith(
                    fontSize: 13.dp,
                  ),
                ),
              ),
              // SizedBox(height: 1.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Text(
                      priceProduct,
                      style: blackBoldTextStyle.copyWith(fontSize: 14.dp),
                    ),
                  ),
                  Container(
                    height: 3.5.h,
                    width: 12.5.w,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFC000),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: whiteColor,
                          size: 18.dp,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 0.5.h),
                          child: Text(
                            rating,
                            style: whiteTextStyle.copyWith(fontSize: 13.dp),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          badge ?? SizedBox(),
        ],
      ),
    );
  }
}
