import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constant/style/icon_size.dart';
import 'package:shop_app/view-model/home_page_view_model.dart';
import '../../../constant/app/texts.dart';
import '../../../constant/style/text_size.dart';
import '../../../constant/style/widget_size.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  static final double shoppingCartItemSizeHeight = WidgetSize.heightSize22;
  static final double shoppingCartItemSizeWidth = WidgetSize.widthSize22;
  final EdgeInsets onlyPadding =
      const EdgeInsets.only(top: 35, left: 15, right: 15);
  static final double shoppingCartIconSize = IconSize.iconSize55;
  final Color titleColor = Colors.black;
  final Color cartLenghtBackGround = Colors.red;
  static final cartItemLenghtTextSize = TextSize.textSize12;
  final double cartLenghtContainerRadius = 180.0;
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
            style: Theme.of(context).textTheme.headline4!.merge(
                  TextStyle(color: titleColor, fontWeight: FontWeight.w500),
                ),
          ),
          Stack(
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
                              style: TextStyle(
                                  fontSize: cartItemLenghtTextSize,
                                  color: cartItemLenghtTextColor),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
