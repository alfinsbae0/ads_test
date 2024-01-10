import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:ads_test/utils/triangle_paint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
    this.text,
    this.color,
    this.textStyle,
  });

  final String? text;
  final Color? color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
        ),
        child: Stack(
          children: [
            SizedBox(
              width: 70, // Sesuaikan lebar segitiga
              height: 65, // Sesuaikan tinggi segitiga
              child: CustomPaint(
                painter: TrianglePainter(
                  color: color ?? redColor,
                ),
              ),
            ),
            Transform.rotate(
                angle: 5.5,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.3.h),
                  child: Text(
                    text!.toUpperCase(),
                    style: textStyle ??
                        whiteBoldTextStyle.copyWith(fontSize: 12.dp),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
