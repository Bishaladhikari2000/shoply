import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';

import 'package:shoply/util/helpers/helper_functions.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: EdgeInsets.all(TSizes.md),
      borderColor:
          selectedAddress
              ? Colors.transparent
              : isDark
              ? TColors.darkerGrey
              : TColors.grey,
      backgroundColor:
          selectedAddress
              ? TColors.primary.withOpacity(0.5)
              : Colors.transparent,

      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color:
                  selectedAddress
                      ? isDark
                          ? TColors.light
                          : TColors.dark.withOpacity(0.5)
                      : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jane Smith',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm / 2),
              const Text(
                '988 989787586576',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: TSizes.sm / 2),
              Text(
                '123 Elm Street Springfield IL 62701 USA123 Elm Street Springfield IL 62701 USA',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
