import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

class CustomAppBar {
  static defaultAppBar({
    String? title,
    Color? backButtonColor,
    List<Widget>? actions,
  }) {
    return AppBar(
      title: title != null ? Text(title) : null,
      leading: BackButton(
        onPressed: () => Get.back(),
        color: backButtonColor,
      ),
      actions: actions,
    );
  }

  static pageAppBar({
    required String title,
    Function()? onPressed,
    List<Widget>? actions,
    bool hideBackButton = false,
  }) {
    return AppBar(
      title: Text(
        title,
        style: onPrimaryTextStyle.copyWith(
          fontSize: 16.dp,
          fontWeight: FontWeight.w700,
        ),
      ),
      leading: hideBackButton
          ? null
          : BackButton(
              onPressed: onPressed ?? () => Get.back(),
              color: blackColor,
            ),
      // backgroundColor: primaryColor,
      centerTitle: false,
      actions: actions,
    );
  }
}
