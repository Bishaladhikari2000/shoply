import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class ShoplyCouponCode extends StatelessWidget {
  const ShoplyCouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: isDark ? TColors.dark : TColors.light,
      padding: EdgeInsets.only(
        top: TSizes.sm,
        bottom: TSizes.sm,
        left: TSizes.md,
        right: TSizes.sm,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your Coupon Code',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),

          // -- BUTTONS --
          SizedBox(
            width: 80,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor:
                    isDark
                        ? TColors.white.withOpacity(0.5)
                        : TColors.dark.withOpacity(0.5),
                backgroundColor: TColors.grey.withOpacity(0.8),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              onPressed: () {},
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
