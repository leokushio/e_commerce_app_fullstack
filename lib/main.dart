import 'package:e_commerce_app_fullstack/data/repositories/authentication/authentification_repository.dart';
import 'package:e_commerce_app_fullstack/firebase_options.dart';
import 'package:e_commerce_app_fullstack/main_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{

  // -- Add Widget Bindings
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // -- Init GetX Local Storage
  await GetStorage.init();

  // Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // TODO: Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository())
    );

  // TODO: Initialize Authentication
  
  runApp(const MainApp());
}


