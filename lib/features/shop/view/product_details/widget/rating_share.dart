import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/util/constants/sizes.dart';

class RatingandShare extends StatelessWidget {
  const RatingandShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Rating
        Row(
          children: [
            Icon(Iconsax.star1, color: Colors.amber, size: 25),
            SizedBox(width: TSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                text: '4.5',
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(
                    text: ' (5)',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
        // Share
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share, size: TSizes.iconMd),
        ),
      ],
    );
  }
}
