import 'package:ads_test/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              'assets/images/bg_banner.png',
              fit: BoxFit.cover,
              scale: 1.dp,
              width: 300.w,
              height: 100.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 45.w,
                  child: Text(
                    "Save extra on every order",
                    style: TextStyle(
                      color: const Color(0xFF1987FB),
                      fontSize: 20.dp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.w,
                  child: Text(
                    "Etiam mollis metus non faucibus . ",
                    style: blackTextStyle.copyWith(fontSize: 12.dp),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
