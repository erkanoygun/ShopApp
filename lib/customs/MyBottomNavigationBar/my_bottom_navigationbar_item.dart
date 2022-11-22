import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/view-model/home_page_view_model.dart';

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
  final int selectedIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    AppViewModel mystate = Provider.of<AppViewModel>(context, listen: false);
    return Container(
      padding: EdgeInsets.all(containerAllItemPadding),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: itemBottomPadding),
            child: InkWell(
              onTap: () {
                pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut);
                mystate.changeSelecktPage(index);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Icon(
                      icon,
                      size: iconSize,
                      color:
                          index == selectedIndex ? Colors.green : Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      text,
                      style: TextStyle(fontSize: textSize),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: index == selectedIndex
                ? const Icon(
                    Icons.linear_scale_outlined,
                    color: Colors.green,
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
