import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:loading_indicator/loading_indicator.dart';

import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: ShoplyAppTheme.lightTheme,
      darkTheme: ShoplyAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: TColors.primary,
        body: Center(
          child: LoadingIndicator(
            indicatorType: Indicator.orbit,
            colors: [TColors.white],
            strokeWidth: 1,
          ),
        ),
      ),
    );
  }
}
