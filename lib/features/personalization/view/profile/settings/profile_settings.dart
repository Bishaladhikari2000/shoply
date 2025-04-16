import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/common/widgets/images/circular_image.dart';
import 'package:shoply/common/widgets/texts/section_heading.dart';
import 'package:shoply/features/personalization/view/profile/widgets/profile_menu.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShoplyAppBar(
        showBackArrow: true,
        title: const Text('Profile Settings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                // Profile Picture Section
                const CircularImage(
                  image: ShoplyImages.user,
                  width: 100,
                  height: 100,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    // Remove const since the color depends on context
                    'Change Profile Picture',
                    style: TextStyle(
                      color:
                          HelperFunctions.isDarkMode(context)
                              ? TColors.white
                              : TColors.primary,
                    ),
                  ),
                ),
                // Details Section
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ShoplySectionHeading(
                  title: 'Basic information',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                ProfileMenu(
                  onPressed: () {},
                  title: 'Name',
                  value: 'ShoplyUser',
                ),
                ProfileMenu(
                  onPressed: () {},
                  title: 'Username',
                  value: 'Shoply_user',
                ),

                const SizedBox(height: TSizes.spaceBtwItems / 2),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),

                // Personal Information Section
                const ShoplySectionHeading(
                  title: 'Information',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),

                ProfileMenu(
                  title: 'User ID',
                  value: '45689',
                  onPressed: () {},
                  icon: Iconsax.copy,
                ),
                ProfileMenu(
                  title: 'E-mail',
                  value: '@gmail.com',
                  onPressed: () {},
                ),
                ProfileMenu(
                  title: 'Phone Number',
                  value: '+92-24234234234',
                  onPressed: () {},
                ),
                ProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
                ProfileMenu(
                  title: 'Date of Birth',
                  value: '10 Oct, 1994',
                  onPressed: () {},
                ),

                const Divider(),

                Center(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    child: const Text(
                      'Delete Account',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
