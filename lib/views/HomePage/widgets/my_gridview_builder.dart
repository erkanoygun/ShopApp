import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import 'package:shop_app/views/DetailPage/detail_page.dart';
import 'package:shop_app/views/HomePage/widgets/add_cart_button_small.dart';
import 'package:shop_app/views/HomePage/widgets/fav_icon.dart';
import 'package:shop_app/views/HomePage/widgets/product_image.dart';
import 'package:shop_app/views/HomePage/widgets/product_name_price_widget.dart';
import '../../../constant/style/widget_size.dart';

class MyGridWievBuilder extends StatelessWidget {
  const MyGridWievBuilder({super.key});
  
  static final double gridWievCardSize = WidgetSize.heightSize220;
  static final double crossAxisSpacing = WidgetSize.heightSize40;

  final Color containerBackGroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
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
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      product: mystate.products[index],
                    ),
                  ),
                );
              },
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: containerBackGroundColor,
                    ),
                    child: Column(
                      children: [
                        MyProductImage(
                          mystate: mystate,
                          index: index,
                        ),
                        ProductNameAndPrice(mystate: mystate, index: index,),
                        AddCartButtonSmall(
                            mystate: mystate, productIndex: index),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: MyFavIcon(mystate: mystate, productIndex: index),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
