import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constant/app/app_texts.dart';

class ProductPriceAndCartButton extends StatelessWidget {
  const ProductPriceAndCartButton({super.key, required this.productPrice});
  static final double boxHeightSize = 55.h;
  static final double buttonSize = 40.h;
  final Color buttonColor = Colors.black;
  static final double priceFontSize = 24.sp;
  static final double buttonFontSize = 14.sp;
  static final double buttonRadius = 18.0.r;
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
