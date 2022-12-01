import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/extension/color_extensions.dart';

import '../../../core/constant/app/colors.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.imgPath, required this.price});
  final String imgPath;
  final int price;
  static final double containerLeftBottomRadius = 275.r;
  static final double containerHeight = 300.h;
  static final double imageSizedBoxHeight = 306.h;
  static final double imageSizedBoxWidth = 306.w;
  static final EdgeInsets paddingOnly =
      const EdgeInsets.only(top: 24, bottom: 3).r;
  static final EdgeInsets paddingAllPriceText = const EdgeInsets.all(8.0).r;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: containerHeight,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
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
        Positioned.fill(
          bottom: 30.h,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Card(
              color: AppColor.brown.toColor(),
              child: Padding(
                padding: paddingAllPriceText,
                child: Text(
                  "$price ₺",
                  style: Theme.of(context).textTheme.bodyMedium!.merge(
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.white.toColor(),
                        ),
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
