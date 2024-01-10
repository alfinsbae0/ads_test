import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:ads_test/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ListContent {
  ListContent({
    required this.title,
    this.image,
    this.description,
    this.widget,
    this.backgroundImage,
    this.lottie,
  });
  String title;
  String? image;
  String? lottie;
  String? description;
  Widget? widget;
  String? backgroundImage;
}

List<ListContent> contents = [
  ListContent(
    // backgroundImage: "assets/images/intro1.png",
    title: "View and buy Medicine online",
    image: 'assets/images/intro1.png',
    description:
        "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
  ),
  ListContent(
    // backgroundImage: "assets/images/action_mob_bg2.png",
    title: "Online medical & Healthcare",
    image: 'assets/images/intro2.png',
    description:
        "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
  ),
  ListContent(
    // backgroundImage: "assets/images/action_mob_bg2.png",
    title: "Welcome to Apotech",
    image: 'assets/images/intro3.png',
    description: "Do you want some help with your health to get better life?",
    widget: Column(
      children: [
        CustomButton(
          elevation: 5,
          width: 70.w,
          height: 6.h,
          borderColor: primaryColor,
          borderWidth: 0,
          textStyle: whiteTextStyle,
          text: 'Sign up with email'.toUpperCase(),
          onPressed: () {},
          backgroundColor: primaryColor,
        ),
        SizedBox(height: 1.h),
        CustomButton(
          width: 70.w,
          height: 6.h,
          borderColor: greyColor,
          borderWidth: 1,
          textStyle: blackTextStyle.copyWith(fontSize: 13.dp),
          text: 'Continue with facebook'.toUpperCase(),
          onPressed: () {},
          prefixIcon: Image.asset(
            'assets/icons/fb_icon.png',
            width: 18.dp,
          ),
          backgroundColor: whiteColor,
        ),
        SizedBox(height: 1.h),
        CustomButton(
          width: 70.w,
          height: 6.h,
          borderColor: greyColor,
          borderWidth: 1,
          textStyle: blackTextStyle.copyWith(fontSize: 13.dp),
          text: 'Continue with Gmail'.toUpperCase(),
          onPressed: () {},
          prefixIcon: Image.asset(
            'assets/icons/google_icon.png',
            width: 18.dp,
          ),
          backgroundColor: whiteColor,
        ),
      ],
    ),
  ),
];
