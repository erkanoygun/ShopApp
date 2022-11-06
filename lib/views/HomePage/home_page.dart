import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/filter_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static final gridWievCardSize = ScreenUtil().setHeight(200);
  static final crossAxisSpacing = ScreenUtil().setHeight(40);

  @override
  Widget build(BuildContext context) {
    // 56 App bar height
    return Scaffold(
      bottomNavigationBar: MyBottomBar(),
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                FitersCard(
                  icon: Icons.sort,
                  text: "Sort",
                ),
                FitersCard(
                  icon: Icons.filter_alt_sharp,
                  text: "Filter",
                ),
                FitersCard(
                  icon: Icons.search,
                  text: "Search",
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15).r,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: gridWievCardSize,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: crossAxisSpacing,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Text("test"),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyBottomBarItem extends StatelessWidget {
  const MyBottomBarItem(
      {super.key,
      required this.iconSize,
      required this.textSize,
      required this.isSelect,required this.text,required this.icon});
  final double iconSize;
  final double textSize;
  final bool isSelect;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      icon,
                      size: iconSize,
                    ),
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
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: isSelect
                ? const Icon(Icons.linear_scale_outlined, color: Colors.green)
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          MyBottomBarItem(
            iconSize: 25,
            textSize: 15,
            isSelect: true,
            text: "Home",
            icon: Icons.home,
          ),
          MyBottomBarItem(
            iconSize: 25,
            textSize: 15,
            isSelect: false,
            text: "Categories",
            icon: Icons.category_rounded,
          ),
          MyBottomBarItem(
            iconSize: 25,
            textSize: 15,
            isSelect: false,
            text: "Favorites",
            icon: Icons.favorite,
          ),
          MyBottomBarItem(
            iconSize: 25,
            textSize: 15,
            isSelect: false,
            text: "Profile",
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}
