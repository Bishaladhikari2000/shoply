import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/common/widgets/products/cart_counter_icon.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/text_strings.dart';

class ShoplyHomeAppBar extends StatelessWidget {
  const ShoplyHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ShoplyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.copyWith(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: TColors.white),
          ),
        ],
      ),
      actions: [CartCounterIcon(onPressed: () {}, iconColor: TColors.white)],
    );
  }
}
