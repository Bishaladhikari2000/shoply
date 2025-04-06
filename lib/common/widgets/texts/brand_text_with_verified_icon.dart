import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/texts/brand_title_text.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/enums.dart';
import 'package:shoply/util/constants/sizes.dart';

class BrandTextWithVerifiedIcon extends StatelessWidget {
  const BrandTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.brandTextSizes = TextSizes.small,
    this.textAlign = TextAlign.center,
  });

  final String title;
  final int maxLines;
  final TextAlign textAlign;
  final Color? textColor, iconColor;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            brandTextSize: brandTextSizes,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
          ),
        ),

        const SizedBox(width: TSizes.xs),
        Icon(Iconsax.verify5, color: Color(0xFF25A5DC), size: TSizes.iconXs),
      ],
    );
  }
}
