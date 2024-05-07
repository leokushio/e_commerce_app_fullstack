import 'package:e_commerce_app_fullstack/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: Center(
        child: ElevatedButton(onPressed: () {}, child: Text('H e l l o !')),
      ),
      
    );
  }
}