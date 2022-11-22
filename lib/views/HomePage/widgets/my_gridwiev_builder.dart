import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/view-model/home_page_view_model.dart';
import '../../../constant/app/texts.dart';
import '../../../constant/style/text_size.dart';
import '../../../constant/style/widget_size.dart';

class MyGridWievBuilder extends StatelessWidget {
  const MyGridWievBuilder({super.key});
  static final double productNameTextSize = TextSize.textSize12;
  static final double productPriceTextSize = TextSize.textSize16;
  static final double gridWievCardSize = WidgetSize.heightSize220;
  static final double crossAxisSpacing = WidgetSize.heightSize40;
  static final double productImageWidth = WidgetSize.heightSize140;
  static final double productImageHeight = WidgetSize.heightSize140;
  static final double favIconSize = WidgetSize.heightSize25;
  static final double addToCartButtonWidth = WidgetSize.heightSize120;
  static final double addToCartButtonHeight = WidgetSize.heightSize25;

  @override
  Widget build(BuildContext context) {
    Provider.of<AppViewModel>(context, listen: false).getProducts();
    return Consumer<AppViewModel>(
      builder: (context, mystate, child) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: gridWievCardSize,
            childAspectRatio: 1.0,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisSpacing: 10.0,
          ),
          itemCount: mystate.products.length,
          itemBuilder: (BuildContext ctx, index) {
            return Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: productImageWidth,
                        height: productImageHeight,
                        child: Image.asset(mystate.products[index].imgPath),
                      ),
                      Text(
                        mystate.products[index].name,
                        style: TextStyle(fontSize: productNameTextSize),
                      ),
                      Text(
                        mystate.products[index].price,
                        style: TextStyle(
                            fontSize: productPriceTextSize,
                            fontWeight: FontWeight.bold),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize:
                              Size(addToCartButtonWidth, addToCartButtonHeight),
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: const Text(AppText.addCartButtonText),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite_border,
                    size: favIconSize,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
