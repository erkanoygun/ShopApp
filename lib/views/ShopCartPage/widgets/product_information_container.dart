import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/views/ShopCartPage/widgets/product_add_remove_widget.dart';
import 'package:shop_app/views/ShopCartPage/widgets/product_details.dart';

class ProductInforWidget extends StatelessWidget {
  const ProductInforWidget(
      {super.key,
      required this.dimensions,
      required this.weight,
      required this.productName});
  final String dimensions;
  final int weight;
  final String productName;
  static final double containerHeight = 120.h;
  static final double containerWidth = 280.w;
  static final double inSideSizedBoxHeight = 120.h;
  static final double inSideSizedBoxWidth = 175.w;
  static final double productNameFontSize = 12.sp;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      color: Colors.green,
      width: containerWidth,
      height: containerHeight,
      child: SizedBox(
        width: inSideSizedBoxWidth,
        height: inSideSizedBoxHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                productName,
                style: TextStyle(
                  fontSize: productNameFontSize,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ProductDetailsWidget(
                dimensions: dimensions,
                weight: weight,
              ),
            ),
            const Expanded(
              flex: 6,
              child: ProductAddAndRemoveWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
