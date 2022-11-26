import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constant/app/app_texts.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.productDimensions, required this.productWeight});
  final String productDimensions;
  final String productWeight;
  static final double boxHeightSize = 65.h;
  static final double titleFontSize = 12.sp;
  static final double detailValueFontSize = 18.sp;
  final String weightUnit = "Kg";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: boxHeightSize,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppText.productDimensionsTitle,
                style: TextStyle(fontSize: titleFontSize),
              ),
              Text(
                productDimensions,
                style: TextStyle(fontSize: detailValueFontSize, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppText.productWeightTitle,
                style: TextStyle(fontSize: titleFontSize),
              ),
              Text(
                "$productWeight $weightUnit.",
                style: TextStyle(fontSize: detailValueFontSize, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
