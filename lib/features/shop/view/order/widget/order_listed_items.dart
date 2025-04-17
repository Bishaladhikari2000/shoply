import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class OrderListedItems extends StatelessWidget {
  const OrderListedItems({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder:
          (_, __) => RoundedContainer(
            showBorder: true,
            padding: const EdgeInsets.all(TSizes.md),
            backgroundColor: isDark ? TColors.dark : TColors.light,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // -- ORDER LISTED ITEMS ROW 1 --
                Row(
                  children: [
                    // --- 1 ICON ---
                    Icon(Iconsax.ship),
                    SizedBox(width: TSizes.spaceBtwItems / 2),
                    // --- 2 STATUS AND DATE ---
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Processing',
                            style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: TColors.primary,
                              fontWeightDelta: 1,
                            ),
                          ),
                          Text(
                            '01 Nov 2025',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ),
                    // --- ICON RIGHT ARROW ---
                    Icon(
                      Iconsax.arrow_right,
                      color: isDark ? TColors.white : TColors.darkerGrey,
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                // -- ORDER LISTED ITEMS ROW 2 --
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          // --- 1 ICON ---
                          Icon(Iconsax.tag),
                          SizedBox(width: TSizes.spaceBtwItems / 2),
                          // --- 2 STATUS AND DATE ---
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),

                                Text(
                                  '[#12345]',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          // --- 1 ICON ---
                          Icon(Iconsax.calendar),
                          SizedBox(width: TSizes.spaceBtwItems / 2),
                          // --- 2 STATUS AND DATE ---
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shipping Date',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),

                                Text(
                                  '03 Nov 2025',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}
