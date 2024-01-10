import 'dart:async';
import 'package:ads_test/features/onboarding_screen/view/onboarding_page.dart';
import 'package:ads_test/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    timer();
    super.initState();
  }

  timer() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Get.to(const OnboardingScreenPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        image: const DecorationImage(
          alignment: Alignment.bottomCenter,
          image: AssetImage('assets/images/background.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Image.asset(
            'assets/icons/logo.png',
            width: 105.dp,
          ),
        ),
      ),
    );
  }
}
