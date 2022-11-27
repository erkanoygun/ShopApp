import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import '../../../core/constant/app/app_texts.dart';
import '../../ShopCartPage/shopping_cart_page.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  static final double shoppingCartItemSizeHeight = 22.h;
  static final double shoppingCartItemSizeWidth = 22.w;
  static final EdgeInsets onlyPadding =
      const EdgeInsets.only(top: 35, left: 15, right: 15).r;
  static final double shoppingCartIconSize = 55.h;
  final Color titleColor = Colors.black;
  final Color cartLenghtBackGround = Colors.red;
  //static final cartItemLenghtTextSize = 12.sp;
  static final double cartLenghtContainerRadius = 180.0.r;
  final Color cartItemLenghtTextColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: onlyPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.appBarTitle,
            style: Theme.of(context).textTheme.displayMedium!.merge(
                  const TextStyle(fontWeight: FontWeight.w400),
                ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShoppingCartPage(),
                ),
              );
            },
            child: Stack(
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: shoppingCartIconSize,
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(cartLenghtContainerRadius),
                      ),
                      elevation: 0,
                      color: cartLenghtBackGround,
                      borderOnForeground: false,
                      child: SizedBox(
                        height: shoppingCartItemSizeHeight,
                        width: shoppingCartItemSizeWidth,
                        child: Consumer<AppViewModel>(
                          builder: (context, mystate, child) {
                            return Center(
                              child: Text(
                                mystate.cartList.length.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .merge(
                                      TextStyle(
                                          color: cartItemLenghtTextColor,
                                          fontWeight: FontWeight.normal),
                                    ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
