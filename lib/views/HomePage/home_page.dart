import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/views/HomePage/widgets/my_gridview_builder.dart';
import '../../core/constant/app/app_texts.dart';
import '../../customs/customAppBar/my_app_bar.dart';
import 'widgets/filter_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static final EdgeInsets onlyPadding = const EdgeInsets.only(left: 15, right: 15,top: 15).r;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: AppText.appBarTitle),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                FitersCards(
                  icon: Icons.sort,
                  text: AppText.filtersCardSort,
                ),
                FitersCards(
                  icon: Icons.filter_alt_sharp,
                  text: AppText.filtersCardFilter,
                ),
                FitersCards(
                  icon: Icons.search,
                  text: AppText.filtersCardSearch,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: onlyPadding,
              child: const MyGridWievBuilder(),
            ),
          ),
        ],
      ),
    );
  }

  
}
