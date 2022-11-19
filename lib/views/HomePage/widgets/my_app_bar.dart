import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/app/texts.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({super.key});
  final double shoppingCartItemSizeHeight = ScreenUtil().setHeight(25);
  final double shoppingCartItemSizeWidth = ScreenUtil().setWidth(25);
  final double shoppingCartIconSize = 66;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.appBarTitle,
            style: Theme.of(context).textTheme.headline3!.merge(
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
                      borderRadius: BorderRadius.circular(100),
                    ),
                    elevation: 0,
                    color: Colors.red,
                    borderOnForeground: false,
                    child: SizedBox(
                      height: shoppingCartItemSizeHeight,
                      width: shoppingCartItemSizeWidth,
                      child: Center(
                        child: Text("3",
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(16),
                                color: Colors.white)),
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
