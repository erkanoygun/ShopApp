import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/extension/color_extensions.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import '../../../core/constant/app/app_texts.dart';
import '../../../core/constant/app/colors.dart';
import '../../../core/constant/navigation/navigation_constant.dart';
import '../../../init/navigation/navigation_service.dart';

class AddCartButtonSmall extends StatelessWidget {
  const AddCartButtonSmall(
      {super.key, required this.mystate, required this.productIndex});
  final AppViewModel mystate;
  final int productIndex;
  static final double addToCartButtonWidth = 120.h;
  static final double addToCartButtonHeight = 25.h;
  static late bool isCartList;

  @override
  Widget build(BuildContext context) {
    isCartList = mystate.cartList.contains(mystate.products[productIndex]);
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(addToCartButtonWidth, addToCartButtonHeight),
        foregroundColor: AppColor.black.toColor(),
        backgroundColor:
            isCartList ? AppColor.softGreen2.toColor() : Colors.transparent,
      ),
      onPressed: () {
        return onTabButton(mystate);
      },
      child: isCartList
          ? const Icon(Icons.shopping_cart_checkout_rounded)
          : const Text(AppText.addCartButtonText),
    );
  }

  void onTabButton(AppViewModel mystate) {
    isCartList = mystate.cartList.contains(mystate.products[productIndex]);
    return isCartList
        ? NavigationService.instance.navigateToPage(
            path: NavigationConstant.ShopingCartPage,
          )
        : mystate.addCartList(mystate.products[productIndex]);
  }
}
