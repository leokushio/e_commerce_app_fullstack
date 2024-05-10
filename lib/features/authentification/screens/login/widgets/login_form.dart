
import 'package:e_commerce_app_fullstack/features/authentification/screens/signup/signup.dart';
import 'package:e_commerce_app_fullstack/utils/constants/sizes.dart';
import 'package:e_commerce_app_fullstack/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections,),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: TTexts.email),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields,),
        
            // Password Textfield
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash,),
                labelText: TTexts.password,
                ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2,),
        
            // Remember Me & Forgo Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(TTexts.rememberMe)
                  ],
                ),
                // Forgot password
                TextButton(onPressed: (){}, child: const Text(TTexts.forgetPassword))
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),
        
            // Sign In Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.signIn))),
            const SizedBox(height: TSizes.spaceBtwItems,),
            // Create Account Button
            SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() =>const SignupScreen()), child: const Text(TTexts.createAccount)))
          ],
        ),
      )
    );
  }
}