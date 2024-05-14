import 'package:e_commerce_app_fullstack/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app_fullstack/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_app_fullstack/features/authentification/controllers/signup/signup_controller.dart';
import 'package:e_commerce_app_fullstack/features/authentification/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_app_fullstack/utils/constants/sizes.dart';
import 'package:e_commerce_app_fullstack/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [

              // heading
              Text(TTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // Sign up Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // Divider
              const TFormDivider(dividerText: TTexts.orSignUpWith),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // Social Buttons
              const TSocialButtons()

              
            ],
          ),
        ),
      ),
    );
  }
}

