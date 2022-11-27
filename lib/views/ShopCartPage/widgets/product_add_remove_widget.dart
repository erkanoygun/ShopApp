import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/extension/color_extensions.dart';
import '../../../core/constant/app/colors.dart';

class ProductAddAndRemoveWidget extends StatelessWidget {
  const ProductAddAndRemoveWidget({super.key});
  static final double sizedBoxWeight = 85.w;
  static final double sizedBoxHeight = 28.h;
  final double buttonSize = 26;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "10000₺",
          style: Theme.of(context).textTheme.headlineSmall!.merge(
                const TextStyle(fontWeight: FontWeight.bold),
              ),
        ),
        Stack(
          children: [
            SizedBox(
              width: sizedBoxWeight,
              height: sizedBoxHeight,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: AppColor.verySoftBrown.toColor(),
                    width: 65.w,
                    height: 18.h,
                    child: Text(
                      "1",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: buttonSize.w,
                      height: buttonSize.h,
                      child: FloatingActionButton(
                        heroTag: "demoTag1",
                        foregroundColor: AppColor.black.toColor(),
                        backgroundColor: AppColor.red.toColor(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        onPressed: () {},
                        child: const Icon(Icons.remove),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: buttonSize.w,
                      height: buttonSize.h,
                      child: FloatingActionButton(
                        heroTag: "demoTag2",
                        foregroundColor: AppColor.black.toColor(),
                        backgroundColor: AppColor.green.toColor(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
