

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce_app_fullstack/utils/popups/loaders.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  // Initialize the network manager and set up a stream to continually check the connection status
  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  // Update the connection status based on changes in connectivity and show a relevant popup for no internet connection
  void _updateConnectionStatus(List<ConnectivityResult> result) async{
    _connectionStatus.value = result[0];
    if(_connectionStatus.value == ConnectivityResult.none) {
      TLoaders.warningSnackBar(title: 'No Internet Connection');
    }
  }

  // CHeck the internet connection status
  // Returns true if connected
  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if(result.contains(ConnectivityResult.none) ) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    }
  }

  // Dispose the active connectivity stream
  @override 
  void onClose() {
    super.onClose();
    _connectivitySubscription.cancel();
  }
}