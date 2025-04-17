import 'package:flutter/material.dart';

import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/common/widgets/products/ratings/custom_rating_bar_indicator.dart';
import 'package:shoply/features/shop/view/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:shoply/features/shop/view/product_reviews/widgets/user_review_card.dart';


import 'package:shoply/util/constants/sizes.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ---APPBAR ---
      appBar: ShoplyAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      // --- BODY ---
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trust is our priority! Every review and rating you see has been verified for accuracy and authenticity.',
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            // -- OVERALL PRODUCT RATINGS ------
            OverallProductRating(),

            // -- Rating -----
            CustomRatingBarIndicator(rating: 3.5),
            Text('256', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: TSizes.spaceBtwSections),

            // --LIST OF USER REVIEWS----
            UserReviewCard(),
            UserReviewCard(),
            UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
