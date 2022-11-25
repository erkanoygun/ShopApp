import 'package:flutter/material.dart';
import 'package:shop_app/views/ShopCartPage/widgets/list_view_builder.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Column(
          children: const [
            Expanded(
              flex: 6,
              child: MyListViewBuilder(),
            ),
            Expanded(
              child: SizedBox(),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
