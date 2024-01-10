import 'package:ads_test/features/home/view/homepage.dart';
import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:ads_test/widgets/custom_appbar.dart';
import 'package:ads_test/widgets/custom_button.dart';
import 'package:ads_test/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.defaultAppBar(backButtonColor: secondaryColor),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 1.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome Back!".toUpperCase(),
                    style: secondaryTextStyle.copyWith(
                      fontSize: 24.dp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                formField(),
                SizedBox(height: 8.h),
                CustomButton(
                  elevation: 8,
                  width: MediaQuery.of(context).size.width,
                  height: 6.h,
                  borderColor: primaryColor,
                  borderWidth: 0,
                  textStyle: whiteTextStyle.copyWith(
                      fontSize: 16.dp, fontWeight: FontWeight.w700),
                  text: 'Sign IN'.toUpperCase(),
                  onPressed: () {
                    Get.to(const HomePage());
                  },
                  backgroundColor: primaryColor,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 13.dp,
                    color: greyColor,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Don’t have an account? Sign Up",
                      style: greyTextStyle.copyWith(
                        fontSize: 15.dp,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget formField() {
  return Column(
    children: [
      CustomTextField(
        prefixIcon: Padding(
          padding: EdgeInsets.only(right: 4.w),
          child: Image.asset(
            'assets/icons/user_icon.png',
            width: 5.w,
            // height: 10.h,
          ),
        ),
        inline: true,
        fillColor: Colors.transparent,
        hint: "Username",
        hintStyle: TextStyle(
            fontFamily: 'Arial',
            fontSize: 15.dp,
            color: greyColor,
            fontWeight: FontWeight.w400),
      ),
      SizedBox(height: 3.h),
      CustomTextField(
        prefixIcon: Padding(
          padding: EdgeInsets.only(right: 4.w),
          child: Image.asset(
            'assets/icons/lock_icon.png',
            width: 5.w,
            // height: 10.h,
          ),
        ),
        inline: true,
        fillColor: Colors.transparent,
        hint: "Password",
        suffixIcon: TextButton(
            style: const ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.transparent),
            ),
            onPressed: () {},
            child: Text(
              'Forgot?',
              style: greyTextStyle.copyWith(fontSize: 12.dp),
            )),
        hintStyle: TextStyle(
            fontFamily: 'Arial',
            fontSize: 15.dp,
            color: greyColor,
            fontWeight: FontWeight.w400),
      ),
    ],
  );
}
