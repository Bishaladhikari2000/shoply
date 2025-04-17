import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/common/widgets/products/ratings/custom_rating_bar_indicator.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(ShoplyImages.userProfileImage1),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text(
                  'Bishal Adhikari',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        // -- Reviews ---
        Row(
          children: [
            CustomRatingBarIndicator(rating: 2.5),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('01 NOV 2025', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        ReadMoreText(
          'I had a terrible experience with this product. It arrived damaged, and I was really disappointed. I tried to contact customer service for a return, but it took forever to get a response. When I finally did, the process was complicated and frustrating. I expected much better quality based on the reviews, but this was a letdown. I would not recommend this product to anyone, and I will think twice before purchasing from this seller again',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Show Less',
          trimCollapsedText: ' Read More',
          moreStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
          lessStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        // ---- COMPANY REVIEW ------
        RoundedContainer(
          backgroundColor: isDark ? TColors.darkGrey : TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shoply Store',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),

                    Text(
                      '01 Nov, 2021',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                ReadMoreText(
                  'I had a terrible experience with this product. It arrived damaged, and I was really disappointed. I tried to contact customer service for a return, but it took forever to get a response. When I finally did, the process was complicated and frustrating. I expected much better quality based on the reviews, but this was a letdown. I would not recommend this product to anyone, and I will think twice before purchasing from this seller again',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' Show Less',
                  trimCollapsedText: ' Read More',
                  moreStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                  lessStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
