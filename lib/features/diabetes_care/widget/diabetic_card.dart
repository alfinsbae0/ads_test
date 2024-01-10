import 'package:ads_test/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class DiabeticCard extends StatelessWidget {
  const DiabeticCard({
    super.key,
    this.height,
    this.width,
    required this.image,
    this.imageBackgroundColor,
    required this.titleProduct,
  });

  final double? height;
  final double? width;
  final Color? imageBackgroundColor;
  final String image;
  final String titleProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 30.h,
      width: width ?? 28.w,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 239, 245, 253),
        // border: Border.all(color: blackColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 10.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  image,
                ),
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: imageBackgroundColor ?? const Color(0xFFEEEEF0),
            ),
            // child: Image.asset('assets/images/diet_product_example.png'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
            child: Text(
              titleProduct,
              style: blackTextStyle.copyWith(
                fontSize: 13.dp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DiabeticList {
  String titleProduct;
  String image;

  DiabeticList({
    required this.image,
    required this.titleProduct,
  });
}

List<DiabeticList> listDiabetic = [
  DiabeticList(
    image: 'assets/images/diet_product_example1.png',
    titleProduct: 'Sugar Substitute',
  ),
  DiabeticList(
    image: 'assets/images/diet_product_example2.png',
    titleProduct: 'Juices & Vinegars',
  ),
  DiabeticList(
    image: 'assets/images/diet_product_example3.png',
    titleProduct: 'Vitamins Medicines',
  ),
];
