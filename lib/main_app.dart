import 'package:e_commerce_app_fullstack/utils/constants/colors.dart';
import 'package:e_commerce_app_fullstack/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      // themeMode: ThemeMode.dark,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      // Show circular progress indicator whit authentication is still deciding
      home: const Scaffold(
        backgroundColor: TColors.primary,
        body: Center(child: CircularProgressIndicator(color: Colors.white,),),
      ),
      
    );
  }
}