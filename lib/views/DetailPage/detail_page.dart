import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/views/DetailPage/widgets/product_description_text.dart';
import 'package:shop_app/views/DetailPage/widgets/product_details.dart';
import 'package:shop_app/views/DetailPage/widgets/product_image.dart';
import 'package:shop_app/views/DetailPage/widgets/product_price_and_cartbutton.dart';
import 'package:shop_app/views/DetailPage/widgets/star_rating_bar.dart';
import '../../constant/style/icon_size.dart';
import '../../model/product_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.product});
  static double iconSize = IconSize.iconSize28;
  final Product product;
  static final paddingSymmetric = const EdgeInsets.symmetric(horizontal: 10).r; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProductImage(imgPath: product.imgPath),
          Padding(
            padding: paddingSymmetric,
            child: Column(
              children: [
                ProductDescription(
                  description: product.description,
                ),
                ProductPriceAndCartButton(productPrice: product.price),
                StarsRating(
                    rating: product.rating,
                    numberOfIcon: 5,
                    iconSize: iconSize),
                ProductDetails(
                  productDimensions: product.dimensions,
                  productWeight: product.weight.toString(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
