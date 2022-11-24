import 'package:flutter/material.dart';
import '../../../constant/app/app_texts.dart';
import '../../../constant/style/text_size.dart';
import '../../../constant/style/widget_size.dart';

class ProductPriceAndCartButton extends StatelessWidget {
  const ProductPriceAndCartButton({super.key, required this.productPrice});
  static final double boxHeightSize = WidgetSize.heightSize55;
  static final double buttonSize = WidgetSize.heightSize40;
  final Color buttonColor = Colors.black;
  static final priceFontSize = TextSize.textSize24;
  static final buttonFontSize = TextSize.textSize14;
  final double buttonRadius = 18.0;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: boxHeightSize,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            productPrice,
            style:
                TextStyle(fontSize: priceFontSize, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonRadius),
              ),
              backgroundColor: buttonColor,
              fixedSize: Size.fromHeight(
                buttonSize,
              ),
            ),
            onPressed: () {},
            child: Text(
              AppText.addCartButtonText,
              style: TextStyle(
                  fontSize: buttonFontSize, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
