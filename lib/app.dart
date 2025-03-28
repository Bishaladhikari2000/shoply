import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shoply/features/authentication/views/onboarding/onboarding.dart';
import 'package:shoply/util/constants/text_strings.dart';
import 'package:shoply/util/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: ShoplyAppTheme.lightTheme,
      darkTheme: ShoplyAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: OnBoardingScreen(),
    );
  }
}
