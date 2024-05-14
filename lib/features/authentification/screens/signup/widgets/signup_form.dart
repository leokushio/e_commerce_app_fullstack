import 'package:e_commerce_app_fullstack/features/authentification/controllers/signup/signup_controller.dart';
import 'package:e_commerce_app_fullstack/features/authentification/screens/signup/verify_email.dart';
import 'package:e_commerce_app_fullstack/features/authentification/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:e_commerce_app_fullstack/utils/constants/sizes.dart';
import 'package:e_commerce_app_fullstack/utils/constants/text_strings.dart';
import 'package:e_commerce_app_fullstack/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              // -- First Name
              Expanded(
                child: TextFormField(
                  controller: controller.fistName,
                  validator: (value) => TValidator.validateEmptyText('first name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.firstName
                  ),
                ),
              ),

              // -- Last Name
              const SizedBox(width: TSizes.spaceBtwInputFields,),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) => TValidator.validateEmptyText('last name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.lastName
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),

          // -- Username
          TextFormField(
            controller: controller.username,
            validator: (value) => TValidator.validateEmptyText('username', value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: TTexts.username
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),

          // -- Email
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),

          // -- Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TTexts.phoneNo
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),

          // -- Password
          TextFormField(
            controller: controller.password,
            validator: (value) => TValidator.validatePassword(value),
            decoration: const InputDecoration(
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections,),
    
          // Terms & Conditions
          const TTermAndConditionsCheckbox(),
          const SizedBox(height: TSizes.spaceBtwSections,),

          // Create Account Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => SignupController().signup(), 
              child: const Text(TTexts.createAccount),
            )
          ),
        ],
      )
    );
  }
}

