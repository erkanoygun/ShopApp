import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/extension/color_extensions.dart';
import '../../../core/constant/app/app_texts.dart';
import '../../../core/constant/app/colors.dart';

class ProductPriceAndCartButton extends StatelessWidget {
  const ProductPriceAndCartButton({super.key, required this.productPrice});
  static final double boxHeightSize = 55.h;
  static final double buttonSize = 40.h;
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
            style: Theme.of(context).textTheme.bodyLarge!.merge(
                  const TextStyle(fontWeight: FontWeight.bold),
                ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonRadius),
              ),
              backgroundColor: AppColor.brown.toColor(),
              fixedSize: Size.fromHeight(
                buttonSize,
              ),
            ),
            onPressed: () {},
            child: Text(
              AppText.addCartButtonText,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .merge(TextStyle(color: AppColor.white.toColor())),
            ),
          ),
        ],
      ),
    );
  }
}
