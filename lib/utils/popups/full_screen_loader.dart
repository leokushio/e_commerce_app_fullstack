import 'package:e_commerce_app_fullstack/common/widgets/loaders/animation_loader.dart';
import 'package:e_commerce_app_fullstack/utils/constants/colors.dart';
import 'package:e_commerce_app_fullstack/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// A utility class for managing a full-screen loading dialog
class TFullScreenLoader {
  // Open a fullscreen loading dialog with a given text and animations.
  // This method doesn't return anything
  //
  // Parameters:
  //  - text: The text to be displayed in the loading dialoge.
  //  - animation: the lottie animation to be shown.
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!, // Use Get.overlayContext for overlay dialogs
      barrierDismissible: false, // The dialog can't be dismissed by tapping outside it
      builder: (_) => PopScope(
        canPop: false, // Disable popping with the back button
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250,), // Adjust as needed
              TAnimationLoaderWidget(text: text, animation: animation)
            ],
          ),
        ),
        )
    );
  }

  // Stop the currently open dialog
  // This method doesnt return any thing
  static  stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}