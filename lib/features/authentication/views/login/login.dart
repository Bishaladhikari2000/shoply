import 'package:flutter/material.dart';

import 'package:shoply/common/styles/spacing_styles.dart';
import 'package:shoply/features/authentication/views/login/widgets/login_form.dart';

import 'package:shoply/features/authentication/views/login/widgets/login_header.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingInAppBarHeight,
          child: Column(
            children: [
              // LOGO title & Subtitle
              LoginHeader(dark: dark),

              // Form
              LoginForm(dark: dark),
            ],
          ),
        ),
      ),
    );
  }
}
