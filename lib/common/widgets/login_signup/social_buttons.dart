import 'package:e_commerce_app_fullstack/utils/constants/colors.dart';
import 'package:e_commerce_app_fullstack/utils/constants/image_string.dart';
import 'package:e_commerce_app_fullstack/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.google)
              )
            ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.facebook)
              )
            ),
        )
      ],
    );
  }
}