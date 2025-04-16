import 'package:flutter/material.dart';

import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class SettingsMenuTitle extends StatelessWidget {
  const SettingsMenuTitle({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
    required this.onTap,
  });

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color:
            HelperFunctions.isDarkMode(context)
                ? TColors.white
                : TColors.primary,
      ),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
