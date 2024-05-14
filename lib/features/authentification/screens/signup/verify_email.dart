import 'package:e_commerce_app_fullstack/common/styles/spacing_styles.dart';
import 'package:e_commerce_app_fullstack/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app_fullstack/features/authentification/screens/login/login.dart';
import 'package:e_commerce_app_fullstack/utils/constants/image_string.dart';
import 'package:e_commerce_app_fullstack/utils/constants/sizes.dart';
import 'package:e_commerce_app_fullstack/utils/constants/text_strings.dart';
import 'package:e_commerce_app_fullstack/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          
          IconButton(
            onPressed: () => Get.offAll(()=> const LoginScreen()), 
            icon: const Icon(CupertinoIcons.clear)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            
            children: [
              
              // Image 
              Image(
                width: THelperFunctions.screenWidth() * 0.7,
                image: const AssetImage(TImages.verifyEmail)
                ),

              // Title
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.defaultSpace,),
               Text(
                'myemail@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.defaultSpace,),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.defaultSpace,),

              // Verify now button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                    image: TImages.success,
                    title: TTexts.yourAccountCreatedTitle,
                    subTitle: TTexts.yourAccountCreatedSubTitle,
                    onPressed: () => Get.to(() => const LoginScreen()),
                  )), 
                  child: const Text(TTexts.tContinue),
                  ),  
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail)),  
              ),
            ],
          ),
          ),
      ),
    );
  }
}