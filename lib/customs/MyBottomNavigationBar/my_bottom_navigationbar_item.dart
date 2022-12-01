import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/core/constant/app/colors.dart';
import 'package:shop_app/core/extension/color_extensions.dart';
import 'package:shop_app/view-model/app_view_model.dart';

class MyBottomNavigationBarItem extends StatelessWidget {
  const MyBottomNavigationBarItem({
    super.key,
    this.iconSize = 24,
    this.textSize = 18,
    required this.text,
    required this.icon,
    required this.index,
    required this.selectedIndex,
    required this.pageController,
  });
  final double iconSize;
  final int index;
  final double textSize;
  final String text;
  final IconData icon;
  final double itemBottomPadding = 3.0;
  final double containerAllItemPadding = 1.0;
  final double containerAllItemMargin = 2.0;
  final int selectedIndex;
  final PageController pageController;
  static late AppViewModel mystate;

  @override
  Widget build(BuildContext context) {
    mystate = Provider.of<AppViewModel>(context, listen: false);
    return Expanded(
      child: Container(
        height: double.infinity,
        margin: EdgeInsets.all(containerAllItemMargin),
        padding: EdgeInsets.all(containerAllItemPadding),
        decoration: BoxDecoration(
          color: index == selectedIndex ? Theme.of(context).primaryColor : Colors.transparent,
          shape: BoxShape.circle,
          border: index == selectedIndex ? Border.all() : null,
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: itemBottomPadding),
          child: GestureDetector(
            onTap: () {
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut);
              mystate.changeSelecktPage(index);
            },
            child: Icon(
              icon,
              size: iconSize,
              color:
                  index == selectedIndex ? AppColor.brown.toColor() : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
