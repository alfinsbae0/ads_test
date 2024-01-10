import 'package:ads_test/features/home/widget/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CategoriesSlider extends StatelessWidget {
  const CategoriesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              CategoryCard(
                catTitle: categoryList[index].catTitle,
                icon: categoryList[index].icon,
                linearColors: categoryList[index].linearColors,
              ),
              SizedBox(width: 2.w),
            ],
          );
        },
      ),
    );
  }
}

class TopCategory {
  List<Color>? linearColors;
  String? catTitle;
  String? icon;

  TopCategory({
    this.catTitle,
    this.icon,
    this.linearColors,
  });
}

List<TopCategory> categoryList = [
  TopCategory(
    catTitle: "Dental",
    icon: 'assets/icons/dental_icon.png',
    linearColors: [
      Color(0xFFFF9598),
      Color(0xFFFF70A7),
    ],
  ),
  TopCategory(
    catTitle: "Wellness",
    icon: 'assets/icons/wellness_icon.png',
    linearColors: [
      Color(0XFF19E5A5),
      Color(0XFF15BD92),
    ],
  ),
  TopCategory(
    catTitle: "Homeo",
    icon: 'assets/icons/medical_icon.png',
    linearColors: [
      Color(0xFFFFC06F),
      Color(0xFFFF793A),
    ],
  ),
  TopCategory(
    catTitle: "Eye Care",
    icon: 'assets/icons/eye_icon.png',
    linearColors: [
      Color(0xFF4DB7FF),
      Color(0xFF3E7DFF),
    ],
  ),
  TopCategory(
    catTitle: "Skin & Hair",
    icon: 'assets/icons/skin_icon.png',
    linearColors: [
      Color(0xFF828282),
      Color(0xFF090F47),
    ],
  ),
];
