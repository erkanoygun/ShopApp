import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constant/app/app_texts.dart';
import '../../../customs/CustomButton/custom_button.dart';

class TotalPriceAndButtonContainer extends StatelessWidget {
  const TotalPriceAndButtonContainer({super.key});
  static final EdgeInsets marginAll = const EdgeInsets.all(8).r;
  static final EdgeInsets paddingHorizontal = const EdgeInsets.symmetric(horizontal: 8).r;
  static final double borderRadius = 14.r;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor,width: 2.5.h),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      margin: marginAll,
      padding: paddingHorizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.totalPrice,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "1255 ₺",
                  style: Theme.of(context).textTheme.bodyLarge!.merge(
                        const TextStyle(fontWeight: FontWeight.bold),
                      ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: CustomElevatedButton(
              buttonSize: 50.h,
              text: AppText.buyNowButtonText,
              onPressedButton: (() {}),
            ),
          ),
        ],
      ),
    );
  }
}
