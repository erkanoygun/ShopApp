import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import '../../../core/constant/app/app_texts.dart';

class AddCartButtonSmall extends StatelessWidget {
  const AddCartButtonSmall({super.key, required this.mystate, required this.productIndex});
  final AppViewModel mystate;
  final int productIndex;
  static final double addToCartButtonWidth = 120.h;
  static final double addToCartButtonHeight = 25.h;
  final Color buttonForeGroundColor = Colors.black;
  final Color buttonFBackGroundColor = Colors.transparent;
  static final Color? buttonFBackGroundColor2 = Colors.green[400];
  static late bool isCartList;

  @override
  Widget build(BuildContext context) {
    isCartList =  mystate.cartList.contains(mystate.products[productIndex].id);
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(addToCartButtonWidth, addToCartButtonHeight),
        foregroundColor: buttonForeGroundColor,
        backgroundColor: isCartList ? buttonFBackGroundColor2 : buttonFBackGroundColor,
      ),
      onPressed: () {
        isCartList =  mystate.cartList.contains(mystate.products[productIndex].id);
        return isCartList
            ? print("Sepete Git")
            : mystate.addCartList(mystate.products[productIndex].id);
      },
      child: isCartList
          ? const Icon(Icons.shopping_cart_checkout_rounded)
          : const Text(AppText.addCartButtonText),
    );
  }
}
