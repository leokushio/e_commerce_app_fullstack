import 'package:e_commerce_app_fullstack/common/styles/spacing_styles.dart';
import 'package:e_commerce_app_fullstack/utils/constants/sizes.dart';
import 'package:e_commerce_app_fullstack/utils/constants/text_strings.dart';
import 'package:e_commerce_app_fullstack/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.onPressed,

    });

  final String image, title, subTitle;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            
            children: [
              
              // Image 
              Image(
                width: THelperFunctions.screenWidth() * 0.7,
                image: AssetImage(image)
                ),

              // Title
              Text(
                title,
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
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.defaultSpace,),

              // Verify now button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: onPressed, child: const Text(TTexts.tContinue)),  
              ),
              
            ],
          ),
          ),
      ),
    );
  }
}