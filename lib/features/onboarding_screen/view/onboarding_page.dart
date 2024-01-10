import 'package:ads_test/features/login/view/login_page.dart';
import 'package:ads_test/features/onboarding_screen/view/contents.dart';
import 'package:ads_test/utils/app_color.dart';
import 'package:ads_test/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

class OnboardingScreenPage extends StatefulWidget {
  const OnboardingScreenPage({super.key});

  @override
  State<OnboardingScreenPage> createState() => _OnboardingScreenPageState();
}

class _OnboardingScreenPageState extends State<OnboardingScreenPage> {
  int currentIndex = 0;
  PageController pageController = PageController();
  var loading = false.obs;
  // final amController = Get.put(ActionMobileController());

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: contents.length,
            itemBuilder: (_, index) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 11.h,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              contents[index].image!,
                              width: 75.w,
                            ),
                            SizedBox(height: 3.h),
                            Column(
                              children: [
                                SizedBox(
                                  width: 60.w,
                                  child: Text(
                                    contents[index].title,
                                    textAlign: TextAlign.center,
                                    style: secondaryTextStyle.copyWith(
                                      fontSize: 23.dp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                SizedBox(
                                  width: 70.w,
                                  child: Text(
                                    contents[index].description!,
                                    textAlign: TextAlign.center,
                                    style:
                                        greyTextStyle.copyWith(fontSize: 16.dp),
                                  ),
                                ),
                                contents[index].widget != null
                                    ? Padding(
                                        padding: EdgeInsets.only(top: 3.h),
                                        child: contents[index].widget!,
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: currentIndex == contents.length - 1
                          ? TextButton(
                              onPressed: () => Get.to(const LoginPage()),
                              child: Text(
                                'Login'.toUpperCase(),
                                style: greyTextStyle.copyWith(fontSize: 14.dp),
                              ),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Skip',
                                  style:
                                      greyTextStyle.copyWith(fontSize: 14.dp),
                                ),
                                BuildDots(currentIndex: currentIndex),
                                Text(
                                  'Next',
                                  style:
                                      blackTextStyle.copyWith(fontSize: 14.dp),
                                )
                              ],
                            ),
                    ),
                  ),
                ],
              );
            },
          ),
          // Obx(() {
          //   if (amController.loading.value) {
          //     return Container(
          //       color: Colors.black54,
          //       child: const Center(
          //         child: CircularProgressIndicator(),
          //       ),
          //     );
          //   } else {
          //     return const SizedBox.shrink();
          //   }
          // }),
        ],
      ),
    );
  }
}

class BuildDots extends StatelessWidget {
  const BuildDots({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        contents.length,
        (index) => Container(
          height: 9.dp,
          width: 9.dp,
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: currentIndex == index ? secondaryColor : Colors.transparent,
            border: Border.all(
              color:
                  currentIndex == index ? Colors.transparent : secondaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
