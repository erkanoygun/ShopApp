import 'package:flutter/material.dart';

import '../../../core/constant/app/app_texts.dart';

class EmptyListPage extends StatelessWidget {
  const EmptyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppText.emptyCartListText),
      ),
    );
  }
}
