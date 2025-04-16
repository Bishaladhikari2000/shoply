import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/images/circular_image.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/image_strings.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    required this.onPressed,
  });

  final Widget? leading;
  final Text? title;
  final Text? subtitle;
  final Widget? trailing;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        leading:
            leading ??
            CircularImage(
              image: ShoplyImages.user,
              width: 50,
              height: 50,
              padding: 0,
            ),
        title:
            title ??
            Text(
              'user',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall!.apply(color: TColors.white),
            ),
        subtitle:
            subtitle ??
            Text(
              'hello@gmail.com',
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.apply(color: TColors.white),
            ),
        trailing:
            trailing ??
            IconButton(
              icon: const Icon(Iconsax.edit, color: TColors.white),
              onPressed: onPressed,
            ),
      ),
    );
  }
}
