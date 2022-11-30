import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/extension/color_extensions.dart';

import '../../core/constant/app/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.buttonSize, required this.text, this.onPressedButton});
  static final double buttonRadius = 10.0.r;
  final double buttonSize;
  final VoidCallback? onPressedButton;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonRadius),
        ),
        backgroundColor: AppColor.brown.toColor(),
        fixedSize: Size.fromHeight(
          buttonSize,
        ),
      ),
      onPressed: onPressedButton,
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .labelSmall!
            .merge(TextStyle(color: AppColor.white.toColor())),
      ),
    );
  }
}
