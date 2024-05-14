

import 'package:e_commerce_app_fullstack/utils/constants/image_string.dart';
import 'package:e_commerce_app_fullstack/utils/helpers/network_manager.dart';
import 'package:e_commerce_app_fullstack/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app_fullstack/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final email = TextEditingController(); // Controller for email input
  final lastName = TextEditingController(); // Controller for last name input
  final username = TextEditingController(); // Controller for username input
  final password = TextEditingController(); // Controller for password input
  final fistName = TextEditingController(); // Controller for first name input
  final phoneNumber = TextEditingController(); // Controller for phone number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); // Form key for form validation

  // -- SIGNUP
  Future<void> signup() async{
    try{
      // Start Loading
      TFullScreenLoader.openLoadingDialog('We are processing your information...', TImages.circleLoader);
      
      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) return;
      

      // Form Validation
      if(!signupFormKey.currentState!.validate()) return;
     

      //Privacy Policy Check

      // Register User in Firebase Authentication & Save user data in Firebase

      // Save Authenticated user data in the Firebase Firestore

      // Show Success Message

      // Move to Verify Email Screen

    } catch (e) {
      // Show some generic error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Remove Loader
      TFullScreenLoader.stopLoading();
    }
  }
}