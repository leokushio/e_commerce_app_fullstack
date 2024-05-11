

import 'package:e_commerce_app_fullstack/features/authentification/screens/login/login.dart';
import 'package:e_commerce_app_fullstack/features/authentification/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();

  // Called from main.dart at app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }


  // Function to show relevant screen
  screenRedirect() async {
    // local storage
    deviceStorage.writeIfNull('isFirstTime', true);
    // deviceStorage.read('isFirstTime') != true 
    // ? Get.offAll(() => const LoginScreen()) 
    // : Get.offAll(const OnBoardingScreen());

    // -- FOR TESTING, COMMENT ABOVE IF STATEMENT
    // -- AND ADD BELOW STATEMENT TO ALWAYS SEE "OnboardingScreen"
    Get.offAll(const OnBoardingScreen());
  }

  /* ------------------- Email & Password sign_in ----------------------*/

}