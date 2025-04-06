import 'package:flutter/material.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
    this.overLayColor,
    this.backgroundColor,
    required this.image,
  });

  final double width, height, padding;
  final BoxFit? fit;
  final bool isNetworkImage;
  final Color? overLayColor;
  final Color? backgroundColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            (HelperFunctions.isDarkMode(context)
                ? TColors.black
                : TColors.white),

        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          image:
              isNetworkImage
                  ? NetworkImage(image)
                  : AssetImage(image) as ImageProvider,
          color: overLayColor,
          fit: fit,
        ),
      ),
    );
  }
}
