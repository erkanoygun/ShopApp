import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/core/extension/color_extensions.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import '../../../core/constant/app/app_texts.dart';
import '../../../core/constant/app/colors.dart';
import '../../../customs/CustomButton/custom_button.dart';
import '../../../model/product_model.dart';

class ProductCartButtonFavIcon extends StatelessWidget {
  const ProductCartButtonFavIcon({super.key, required this.product});
  static final double boxHeightSize = 40.h;
  static final double buttonSize = 35.h;
  static final double buttonRadius = 10.0.r;
  static final iconSize = 35.h;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, mystate, child) {
        return Row(
          children: [
            Expanded(
              flex: 5,
              child: SizedBox(
                height: boxHeightSize,
                width: double.infinity,
                child: CustomElevatedButton(
                  buttonSize: buttonSize,
                  text: mystate.cartList.contains(product)
                      ? AppText.goCartButtonText
                      : AppText.addCartButtonText,
                  onPressedButton: () {
                    return buttonOnTab(mystate);
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  mystate.addFavoritesList(product.id);
                },
                child: Icon(
                  mystate.favoritesList.contains(product.id)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: mystate.favoritesList.contains(product.id)
                      ? AppColor.red.toColor()
                      : AppColor.black.toColor(),
                  size: iconSize,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void buttonOnTab(AppViewModel mystate) {
    mystate.cartList.contains(product)
        ? print("Sepete Git 2")
        : mystate.addCartList(product);
  }
}
