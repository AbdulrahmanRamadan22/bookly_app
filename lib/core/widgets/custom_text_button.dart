import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;

  const CustomTextButton(
      {super.key,
      required this.backgroundColor,
      required this.text,
      required this.textColor,
      this.borderRadius,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        onPressed: () {},
        child: Text(text,
            style: TextStyles.font16bold.copyWith(
              color: textColor,
              fontSize: fontSize,
            )),
      ),
    );
  }
}