import 'package:e_commerce_app_fullstack/features/authentification/screens/login/login.dart';
import 'package:e_commerce_app_fullstack/utils/constants/image_string.dart';
import 'package:e_commerce_app_fullstack/utils/constants/sizes.dart';
import 'package:e_commerce_app_fullstack/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Image
            Image(image: AssetImage(TImages.verifyEmail)),

            // Title & SubTitle
            Text(
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(
              TTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),

            // Buttons
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.off(() => const LoginScreen()), child: const Text(TTexts.done)),  
              ),

            SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: (){}, child: const Text(TTexts.done)),  
              ),
          ],
        ),
      ),
    );
  }
}