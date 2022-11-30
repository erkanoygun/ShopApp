import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/core/constant/app/colors.dart';
import 'package:shop_app/core/extension/color_extensions.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import '../../../core/constant/app/app_texts.dart';
import '../../views/ShopCartPage/shopping_cart_page.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget{
  const MyAppBar({super.key,required this.title});
  final String title;
  static final double shoppingCartItemSizeHeight = 20.h;
  static final double shoppingCartItemSizeWidth = 20.w;
  static final double shoppingCartIconSize = 48.h;
  static final Color titleColor = AppColor.black.toColor();
  static final Color cartLenghtBackGround = AppColor.red.toColor();
  static final double cartLenghtContainerRadius = 180.0.r;
  static final Color cartItemLenghtTextColor = AppColor.white.toColor();
  static final double onlyPaddingTop = 10.r;
  static final double appBarToolBarHeight = 65.h;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.only(top: onlyPaddingTop),
        child: Text(
          title,
          style: Theme.of(context).textTheme.displayMedium!.merge(
                const TextStyle(fontWeight: FontWeight.w400),
              ),
        ),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      foregroundColor: AppColor.black.toColor(),
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.only(top: onlyPaddingTop,right: 8),
          child: GestureDetector(
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
                                style:
                                    Theme.of(context).textTheme.titleSmall!.merge(
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
          ),
        ),
      ],
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(appBarToolBarHeight);
}
