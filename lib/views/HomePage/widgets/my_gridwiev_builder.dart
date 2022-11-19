import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/model/product_model.dart';
import 'package:shop_app/view-model/home_page_view_model.dart';
import '../../../constant/app/texts.dart';
import '../../../constant/style/text_size.dart';
import '../constant/text_constant.dart';

class MyGridWievBuilder extends StatelessWidget {
  MyGridWievBuilder({super.key});
  static final productNameTextSize = TextSize.textSize12;
  static final productPriceTextSize = TextSize.textSize16;
  final double gridWievCardSize = ScreenUtil().setHeight(220);
  final double crossAxisSpacing = ScreenUtil().setHeight(40);
  final double productImageWidth = ScreenUtil().setHeight(140);
  final double productImageHeight = ScreenUtil().setHeight(140);
  final double favIconSize = ScreenUtil().setHeight(25);
  final double addToCartButtonWidth = ScreenUtil().setHeight(120);
  final double addToCartButtonHeight = ScreenUtil().setHeight(25);
  //static List imageNames = ['armchair1.png', 'armchair2.png'];
  //"assets/images/${imageNames[Random().nextInt(imageNames.length)]}"

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
