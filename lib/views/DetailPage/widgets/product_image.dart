import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/style/widget_size.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key,required this.imgPath});
  final String imgPath;
  final Color backGroundColor = Colors.red;
  final double containerLeftBottomRadius = 275;
  static final double containerHeight = WidgetSize.heightSize300;
  static final double imageSizedBoxHeight = WidgetSize.heightSize306;
  static final double imageSizedBoxWidth = WidgetSize.widthSize306;
  static final EdgeInsets paddingOnly = const EdgeInsets.only(top: 16).r;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: containerHeight,
          width: double.infinity,
          decoration: BoxDecoration(
            color: backGroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(containerLeftBottomRadius),
            ),
          ),
        ),
        Padding(
          padding: paddingOnly,
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: imageSizedBoxHeight,
              height: imageSizedBoxWidth,
              child: Image.asset(imgPath),
            ),
          ),
        ),
      ],
    );
  }
}
