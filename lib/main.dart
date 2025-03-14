import 'package:flutter/material.dart';
import 'package:shoply/util/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ShoplyAppTheme.lightTheme,
      darkTheme: ShoplyAppTheme.darkTheme,
    );
  }
}
