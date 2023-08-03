/// Note: the widgets folder here is different from the other widget folders that are in views
/// as this folder is for shared widgets across the whole app like the button widget

import 'package:flutter/material.dart';
import 'package:reads/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.fontSize,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            // if you didn't find border then search for shape
            shape: RoundedRectangleBorder(
              //if it didn't take a value through constructor use this as default value
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
