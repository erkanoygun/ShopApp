import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key,required this.imgPath});
  final String imgPath;
  final Color backGroundColor = Colors.red;
  static final double containerLeftBottomRadius = 275.r;
  static final double containerHeight = 300.h;
  static final double imageSizedBoxHeight = 306.h;
  static final double imageSizedBoxWidth = 306.w;
  static final EdgeInsets paddingOnly = const EdgeInsets.only(top: 24, bottom: 3).r;

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
