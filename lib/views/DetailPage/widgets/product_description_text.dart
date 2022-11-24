import 'package:flutter/material.dart';
import '../../../constant/style/text_size.dart';
import '../../../constant/style/widget_size.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key,required this.description});
  final String description;
  static final double sizedBoxHeight = WidgetSize.heightSize55;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizedBoxHeight,
      width: double.infinity,
      child: Text(
        description,
        style: TextStyle(fontSize: TextSize.textSize18),
      ),
    );
  }
}
