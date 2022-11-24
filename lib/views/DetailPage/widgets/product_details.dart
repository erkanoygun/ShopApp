import 'package:flutter/material.dart';
import '../../../constant/app/texts.dart';
import '../../../constant/style/text_size.dart';
import '../../../constant/style/widget_size.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.productDimensions, required this.productWeight});
  final String productDimensions;
  final String productWeight;
  static final double boxHeightSize = WidgetSize.heightSize65;
  static final double titleFontSize = TextSize.textSize12;
  static final double detailValueFontSize = TextSize.textSize18;
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
