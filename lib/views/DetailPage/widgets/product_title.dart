import 'package:flutter/material.dart';

class ProductTitleWidget extends StatelessWidget {
  const ProductTitleWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium!.merge(
              const TextStyle(fontWeight: FontWeight.bold),
            ),
      ),
    );
  }
}
