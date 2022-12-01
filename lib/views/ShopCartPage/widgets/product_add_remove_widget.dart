import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/extension/color_extensions.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import '../../../core/constant/app/colors.dart';

class ProductAddAndRemoveWidget extends StatelessWidget {
  const ProductAddAndRemoveWidget(
      {super.key, required this.index, required this.mystate});
  static final double sizedBoxWeight = 85.w;
  static final double sizedBoxHeight = 28.h;
  final double buttonSize = 26;
  final int index;
  final AppViewModel mystate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "${mystate.cartList[index].price} ₺",
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
                      mystate.cartList[index].quantitiy.toString(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: buttonSize.w,
                      height: buttonSize.h,
                      child: FloatingActionButton(
                        heroTag: "Tag1$index",
                        foregroundColor: AppColor.black.toColor(),
                        backgroundColor: AppColor.red.toColor(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        onPressed: () {
                          mystate.deleteQuantitiy(mystate.cartList[index].id);
                        },
                        child: mystate.cartList[index].quantitiy == 1
                            ? const Icon(Icons.delete)
                            : const Icon(Icons.remove),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: buttonSize.w,
                      height: buttonSize.h,
                      child: FloatingActionButton(
                        heroTag: "Tag2$index",
                        foregroundColor: AppColor.black.toColor(),
                        backgroundColor: AppColor.green.toColor(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        onPressed: () {
                          mystate.addQuantitiy(mystate.cartList[index].id);
                        },
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
