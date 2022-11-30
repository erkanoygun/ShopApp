import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/extension/color_extensions.dart';
import '../../core/constant/app/colors.dart';
import '../../core/constant/style/text_style.dart';

class MyTheme {
  static ThemeData myTheme1 = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    primaryColor: AppColor.softGreen1.toColor(),
    backgroundColor: AppColor.brown.toColor(),
    textTheme: TextTheme(
      displayLarge: MyTextStyle.displayMedium,
      titleSmall: MyTextStyle.titleSmall,
      titleMedium: MyTextStyle.titleMedium,
      headlineSmall: MyTextStyle.headlineSmall,
      displayMedium: MyTextStyle.displayMedium,
      bodySmall: MyTextStyle.bodySmall,
      bodyMedium: MyTextStyle.bodyMedium,
      bodyLarge: MyTextStyle.bodyLarge,
      labelSmall: MyTextStyle.labelSmall,
    ),
  );
}
