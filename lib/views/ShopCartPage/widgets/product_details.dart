import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constant/app/app_texts.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({super.key,required this.dimensions,required this.weight});
  static final double titleTextFontSize = 9.sp;
  static final double textFontSize = 10.sp;
  final String dimensions;
  final int weight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                AppText.productDimensionsTitle,
                style: TextStyle(fontSize: titleTextFontSize),
              ),
              Text(
                dimensions,
                style: TextStyle(
                    fontSize: textFontSize,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                AppText.productWeightTitle,
                style: TextStyle(fontSize: titleTextFontSize),
              ),
              Text(
                "$weight Kg.",
                style: TextStyle(
                    fontSize: textFontSize,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
