import 'package:flutter/material.dart';
import '../../../view-model/app_view_model.dart';

class ProductNameAndPrice extends StatelessWidget {
  const ProductNameAndPrice(
      {super.key, required this.mystate, required this.index});
  final AppViewModel mystate;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          mystate.products[index].name,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          "${mystate.products[index].price} ₺",
          style: Theme.of(context).textTheme.headlineSmall!.merge(
                const TextStyle(fontWeight: FontWeight.bold),
              ),
        ),
      ],
    );
  }
}
