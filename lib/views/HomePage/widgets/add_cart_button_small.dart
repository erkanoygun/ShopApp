import 'package:flutter/material.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import '../../../constant/app/app_texts.dart';
import '../../../constant/style/widget_size.dart';

class AddCartButtonSmall extends StatelessWidget {
  const AddCartButtonSmall({super.key, required this.mystate, required this.productIndex});
  final AppViewModel mystate;
  final int productIndex;
  static final double addToCartButtonWidth = WidgetSize.heightSize120;
  static final double addToCartButtonHeight = WidgetSize.heightSize25;
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
