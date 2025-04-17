import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/common/widgets/products/cart/coupon_widget.dart';
import 'package:shoply/features/authentication/views/signup/widgets/sucess_screen.dart';
import 'package:shoply/features/shop/view/cart/widgets/cart_items.dart';
import 'package:shoply/features/shop/view/checkout/widgets/billing_address_sections.dart';
import 'package:shoply/features/shop/view/checkout/widgets/billing_amount_section.dart';
import 'package:shoply/features/shop/view/checkout/widgets/billing_payment_sections.dart';
import 'package:shoply/navigation_menu.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: ShoplyAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- Cart Items (Full width, no padding) ---
            ShoplyCartItems(showAddRemoveButoons: false),
            const SizedBox(height: TSizes.spaceBtwSections),

            // --- Everything Else (With Padding) ---
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // --- Coupon Code ---
                  ShoplyCouponCode(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // --- Billing Section ---
                  RoundedContainer(
                    padding: const EdgeInsets.all(TSizes.md),
                    showBorder: true,
                    backgroundColor: isDark ? TColors.black : TColors.white,
                    child: Column(
                      children: [
                        // --- Pricing ---
                        ShoplyBillingAmountSection(),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        // --- Divider ---
                        const Divider(),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        // --- Payment Methods ---
                        ShoplyBillingPaymentSection(),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        // --- Address Section---
                        ShoplyBillingAddressSection(),
                        const SizedBox(height: TSizes.spaceBtwItems),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // --- Checkout Button (Add if needed) ---
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed:
              () => Get.to(
                () => SucessScreen(
                  image: ShoplyImages.successfulPaymentIcon,
                  title: 'Payment Sucess !!',
                  subTitle: 'Your Items will be delivered soon',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                ),
              ),
          child: const Text('Checkout \$256.00'), // Replace with dynamic total
        ),
      ),
    );
  }
}
