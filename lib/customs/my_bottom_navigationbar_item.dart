import 'package:flutter/material.dart';

class MyBottomNavigationBarItem extends StatelessWidget {
  const MyBottomNavigationBarItem(
      {super.key,
      this.iconSize = 24,
      this.textSize = 18,
      required this.isSelect,
      required this.text,
      required this.icon});
  final double iconSize;
  final double textSize;
  final bool isSelect;
  final String text;
  final IconData icon;
  final double itemBottomPadding = 3.0;
  final double containerAllItemPadding = 1.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(containerAllItemPadding),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: itemBottomPadding),
            child: GestureDetector(
              onTap: (){
                print("Tap Bottom Bar Item");
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
            child: isSelect
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
