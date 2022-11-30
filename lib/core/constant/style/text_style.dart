import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/extension/color_extensions.dart';

import '../app/colors.dart';

class MyTextStyle {
  static TextStyle displayMedium =
      TextStyle(fontSize: 32.sp, color: AppColor.black.toColor());
  static TextStyle titleMedium =
      TextStyle(fontSize: 15.sp, color: AppColor.black.toColor());
  static TextStyle titleSmall = TextStyle(
      fontSize: 12.sp,
      color: AppColor.black.toColor());
  static TextStyle headlineSmall = TextStyle(
      fontSize: 16.sp,
      color: AppColor.black.toColor());
  static TextStyle bodySmall =
      TextStyle(fontSize: 14.sp, color: AppColor.black.toColor());
  static TextStyle bodyMedium =
      TextStyle(fontSize: 18.sp, color: AppColor.black.toColor());
  static TextStyle bodyLarge =
      TextStyle(fontSize: 24.sp, color: AppColor.black.toColor());
  static TextStyle labelSmall =
      TextStyle(fontSize: 20.sp, color: AppColor.black.toColor());
}
