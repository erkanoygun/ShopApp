import 'package:flutter/material.dart';
import '../../../core/constant/app/app_texts.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({super.key,required this.dimensionsValue,required this.weight});
  final String dimensionsValue;
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
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                dimensionsValue,
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                AppText.productWeightTitle,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                "$weight Kg.",
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
        ),
      ],
    );
  }
}
