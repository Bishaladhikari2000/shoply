import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shoply/util/popups/loader.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(
      _updateConnectionStatus,
    );
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> results) async {
    // Use the first result or combine them as needed
    final result = results.isNotEmpty ? results.last : ConnectivityResult.none;
    _connectionStatus.value = result;
    if (_connectionStatus.value == ConnectivityResult.none) {
      Loader.showWarning(
        title: 'No Internet Connection',
        message: 'Please check your internet connection.',
      );
    }
  }

  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result.isNotEmpty &&
          result.any((result) => result != ConnectivityResult.none);
    } on PlatformException catch (_) {
      return false;
    }
  }

  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }
}
