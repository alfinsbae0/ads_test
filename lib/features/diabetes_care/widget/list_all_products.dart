import 'package:ads_test/features/diabetes_care/view/detail_product.dart';
import 'package:ads_test/features/diabetes_care/widget/custom_badge.dart';
import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

class ListAllProducts extends StatelessWidget {
  const ListAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.h,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 0.60,
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 2.h,
        crossAxisSpacing: 3.w,
        children: List.generate(
          productList.length,
          (index) {
            return GestureDetector(
              onTap: () {
                Get.to(DetailProduct());
              },
              child: Container(
                height: 35.h,
                width: 46.w,
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
                  border: Border.all(color: blackColor.withOpacity(0.2)),
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
                            color: const Color(0xFFEEEEF0),
                            // border: Border.all(color: blackColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(productList[index].image!),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 1.5.h),
                          child: Text(
                            productList[index].titleProduct!,
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
                                productList[index].priceProduct!,
                                style: blackBoldTextStyle.copyWith(
                                    fontSize: 14.dp),
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
                                      productList[index].rating!,
                                      style: whiteTextStyle.copyWith(
                                          fontSize: 13.dp),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    productList[index].badge ?? const SizedBox(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProductsList {
  String? titleProduct;
  String? priceProduct;
  Widget? badge;
  String? image;
  String? rating;

  ProductsList({
    this.badge,
    this.image,
    this.priceProduct,
    this.titleProduct,
    this.rating,
  });
}

List<ProductsList> productList = [
  ProductsList(
    titleProduct: "Accu-check Active Test Strip",
    priceProduct: "Rp 112.000",
    image: 'assets/images/product1.png',
    rating: "4.2",
    badge: const CustomBadge(
      text: "Sale",
    ),
  ),
  ProductsList(
    titleProduct: "Omron HEM-8712 BP Monitor",
    priceProduct: "Rp 150.000",
    image: 'assets/images/product2.png',
    rating: "4.2",
    badge: const CustomBadge(
      text: "15%off",
      color: Color(0xFFFFC000),
    ),
  ),
  ProductsList(
    titleProduct: "Accu-check Active Test Strip",
    priceProduct: "Rp 112.000",
    image: 'assets/images/product3.png',
    rating: "4.2",
  ),
  ProductsList(
    titleProduct: "Omron HEM-8712 BP Monitor",
    priceProduct: "Rp 150.000",
    image: 'assets/images/product4.png',
    rating: "4.2",
  ),
];
