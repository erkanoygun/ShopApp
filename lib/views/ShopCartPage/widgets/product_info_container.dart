import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/views/ShopCartPage/widgets/product_add_remove_widget.dart';
import 'package:shop_app/views/ShopCartPage/widgets/product_details.dart';

import '../../../view-model/app_view_model.dart';

class ProductInfoWidget extends StatelessWidget {
  const ProductInfoWidget(
      {super.key,
      required this.dimensionsValue,
      required this.weight,
      required this.productName,
      required this.index,
      required this.mystate});
  final String dimensionsValue;
  final int weight;
  final String productName;
  static final double containerHeight = 120.h;
  static final double containerWidth = 280.w;
  static final double inSideSizedBoxHeight = 120.h;
  static final double inSideSizedBoxWidth = 175.w;
  static final EdgeInsets sizedBoxTopPadding = const EdgeInsets.only(top: 8).r;
  final int index;
  final AppViewModel mystate;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      color: Theme.of(context).primaryColor.withOpacity(0.50),
      width: containerWidth,
      height: containerHeight,
      child: Padding(
        padding: sizedBoxTopPadding,
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
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Expanded(
                flex: 4,
                child: ProductDetailsWidget(
                  dimensionsValue: dimensionsValue,
                  weight: weight,
                ),
              ),
              Expanded(
                flex: 6,
                child: ProductAddAndRemoveWidget(
                  index: index,
                  mystate: mystate,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
