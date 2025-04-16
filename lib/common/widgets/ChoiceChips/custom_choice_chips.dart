import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/custom_shapes/container/circular_widget.dart';

import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class CustomChoiceChips extends StatelessWidget {
  const CustomChoiceChips({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  // A callback function that takes a boolean parameter and returns no value.
  // It is optional (can be null) and can be used to handle selection events.
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = HelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        // Check if HelperFunctions.getColor(text) returns a color (not null).
        // If it does, show an empty box (SizedBox).
        // If it doesn't, show empty text (Text('')).
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        // Check if HelperFunctions.getColor(text) returns a color (not null).
        // If it does, create a CircularWidget with a width and height of 50,
        // using the color from HelperFunctions.getColor(text) as the background color.
        // If it doesn't, set the avatar to null (no avatar).
        avatar:
            isColor
                ? CircularWidget(
                  width: 50,
                  height: 50,
                  backgroundColor: HelperFunctions.getColor(text)!,
                )
                : null,
        shape: isColor ? const CircleBorder() : null,

        backgroundColor: isColor ? HelperFunctions.getColor(text) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        // selectedColor: Colors.green,
        padding: isColor ? const EdgeInsets.all(0) : null,
      ),
    );
  }
}
