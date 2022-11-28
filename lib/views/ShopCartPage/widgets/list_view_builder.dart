import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import 'package:shop_app/views/ShopCartPage/widgets/product_image_container.dart';
import 'package:shop_app/views/ShopCartPage/widgets/product_info_container.dart';

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({super.key});
  static final double sizedBoxrHeight = 170.h;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, mystate, child) {
        return SizedBox(
          child: ListView.builder(
            itemCount: mystate.cartList.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: double.infinity,
                height: sizedBoxrHeight,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    ProductInfoWidget(
                      dimensionsValue: mystate.cartList[index].dimensions,
                      weight: mystate.cartList[index].weight,
                      productName: mystate.cartList[index].name,
                      index: index,
                      mystate: mystate,
                    ),
                    ProductImageWidget(
                      imgPath: mystate.cartList[index].imgPath,
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
