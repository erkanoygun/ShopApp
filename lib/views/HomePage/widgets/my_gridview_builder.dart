import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import 'package:shop_app/views/HomePage/widgets/add_cart_button_small.dart';
import 'package:shop_app/views/HomePage/widgets/fav_icon.dart';
import 'package:shop_app/views/HomePage/widgets/product_image.dart';
import 'package:shop_app/views/HomePage/widgets/product_name_price_widget.dart';

import '../../../core/constant/navigation/navigation_constant.dart';
import '../../../init/navigation/navigation_service.dart';

class MyGridWievBuilder extends StatelessWidget {
  const MyGridWievBuilder({super.key});
  static final double gridWievCardSize = 220.h;
  static final double crossAxisSpacing = 40.h;
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
                NavigationService.instance.navigateToPage(
                  path: NavigationConstant.ProductDetailPage,
                  data: mystate.products[index],
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
                        ProductNameAndPrice(
                          mystate: mystate,
                          index: index,
                        ),
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
