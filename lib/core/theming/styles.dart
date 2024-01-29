import 'package:bookly_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class TextStyles {
  static TextStyle font18SemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font20Regular = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font30Regular = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14Regular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16Medium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
  );
}
