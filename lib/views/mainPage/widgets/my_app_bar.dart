import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/constant/style/icon_size.dart';
import '../../../constant/app/texts.dart';
import '../../../constant/style/widget_size.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  static final double shoppingCartItemSizeHeight = WidgetSize.heightSize22;
  static final double shoppingCartItemSizeWidth = WidgetSize.widthSize22;
  final EdgeInsets onlyPadding =
      const EdgeInsets.only(top: 35, left: 15, right: 15);
  static final double shoppingCartIconSize = IconSize.iconSize55;

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
                  const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
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
                      borderRadius: BorderRadius.circular(180),
                    ),
                    elevation: 0,
                    color: Colors.red,
                    borderOnForeground: false,
                    child: SizedBox(
                      height: shoppingCartItemSizeHeight,
                      width: shoppingCartItemSizeWidth,
                      child: Center(
                        child: Text(
                          "3",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(12),
                              color: Colors.white),
                        ),
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
