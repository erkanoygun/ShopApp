import 'package:flutter/material.dart';
import '../../../constant/style/text_size.dart';
import '../../../view-model/app_view_model.dart';

class ProductNameAndPrice extends StatelessWidget {
  const ProductNameAndPrice({super.key,required this.mystate,required this.index});
  final AppViewModel mystate;
  final int index;
  static final double productNameTextSize = TextSize.textSize12;
  static final double productPriceTextSize = TextSize.textSize16;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          mystate.products[index].name,
          style: TextStyle(fontSize: productNameTextSize),
        ),
        Text(
          mystate.products[index].price,
          style: TextStyle(
              fontSize: productPriceTextSize, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
