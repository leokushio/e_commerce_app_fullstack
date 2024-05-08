import 'package:e_commerce_app_fullstack/features/authentification/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app_fullstack/features/authentification/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app_fullstack/features/authentification/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce_app_fullstack/features/authentification/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app_fullstack/features/authentification/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app_fullstack/utils/constants/colors.dart';
import 'package:e_commerce_app_fullstack/utils/constants/image_string.dart';
import 'package:e_commerce_app_fullstack/utils/constants/sizes.dart';
import 'package:e_commerce_app_fullstack/utils/constants/text_strings.dart';
import 'package:e_commerce_app_fullstack/utils/device/device_utility.dart';
import 'package:e_commerce_app_fullstack/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //  Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigator SmoothPageIndicator
          const OnBoardingDotNavigation(),

          // Elevator Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }

  

}


