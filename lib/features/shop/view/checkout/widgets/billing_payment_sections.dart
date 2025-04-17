import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/common/widgets/texts/section_heading.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class ShoplyBillingPaymentSection extends StatelessWidget {
  const ShoplyBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ShoplySectionHeading(
          title: 'Payment Methods',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            RoundedContainer(
              width: 50,
              height: 50,
              backgroundColor: isDark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: Image(
                image: AssetImage(ShoplyImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
