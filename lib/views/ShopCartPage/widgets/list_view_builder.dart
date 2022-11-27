import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/views/ShopCartPage/widgets/product_image_container.dart';
import 'package:shop_app/views/ShopCartPage/widgets/product_info_container.dart';

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({super.key});
  static final double sizedBoxrHeight = 170.h;
  final String dimensions = "30 x 26 x 26";
  final int weight = 60;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: 1, //Data
        itemBuilder: (context, index) {
          return SizedBox(
            width: double.infinity,
            height: sizedBoxrHeight,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                ProductInfoWidget(
                  dimensions: dimensions,
                  weight: weight,
                  productName: "Yellow Arm Chair.", //Data
                ), // Data
                const ProductImageWidget(
                  imgPath: "assets/images/armchair1.png", //Data
                ), //Data
              ],
            ),
          );
        },
      ),
    );
  }
}
