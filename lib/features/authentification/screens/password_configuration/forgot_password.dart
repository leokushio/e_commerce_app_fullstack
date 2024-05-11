import 'package:e_commerce_app_fullstack/features/authentification/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app_fullstack/utils/constants/sizes.dart';
import 'package:e_commerce_app_fullstack/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Heading
            Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: TSizes.spaceBtwSections *2,),

            // Text Field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),

            // Submit Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text(TTexts.submit)),  
              ),
          ],
        ),
        ),
    );
  }
}