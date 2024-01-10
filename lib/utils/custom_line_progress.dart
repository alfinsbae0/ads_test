import 'package:ads_test/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomLineProgress extends StatelessWidget {
  const CustomLineProgress({
    super.key,
    this.height = 5,
    this.width1 = 100,
    this.width2 = 80,
    this.color1,
    this.color2,
  });

  final double? height;
  final double? width1;
  final double? width2;
  final Color? color1;
  final Color? color2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width1,
          decoration: BoxDecoration(
              color: color1 ?? greyColor,
              borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          height: height,
          width: width2,
          decoration: BoxDecoration(
            color: color2 ?? primaryColor,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ],
    );
  }
}
