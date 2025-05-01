import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoply/data/repositories/authentication_repo/authentication_repository.dart';
import 'package:shoply/firebase_options.dart';
import 'package:shoply/util/helpers/network_manager.dart';
import 'app.dart';

Future<void> main() async {
  // Initialize Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // Preserve the splash screen
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Local Storage
  await GetStorage.init();

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Initialize Authentication Repository
  Get.put(AuthenticationRepository());

  // Initialize Network Manager
  Get.put(NetworkManager());

  // Remove the splash screen
  FlutterNativeSplash.remove();

  runApp(const App());
}
