import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constant/app/app_texts.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails(
      {super.key,
      required this.productDimensions,
      required this.productWeight});
  final String productDimensions;
  final String productWeight;
  static final double boxHeightSize = 40.h;
  final String weightUnit = "Kg";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: boxHeightSize,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppText.productDimensionsTitle,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                productDimensions,
                style: Theme.of(context).textTheme.bodyMedium!.merge(
                      const TextStyle(fontWeight: FontWeight.bold),
                    ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppText.productWeightTitle,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                "$productWeight $weightUnit.",
                style: Theme.of(context).textTheme.bodyMedium!.merge(
                      const TextStyle(fontWeight: FontWeight.bold),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
