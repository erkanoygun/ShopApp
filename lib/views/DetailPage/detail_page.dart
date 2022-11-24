import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/views/DetailPage/widgets/star_ranking_bar.dart';

import '../../constant/style/text_size.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});
  //static double heightSize300 = ScreenUtil().setHeight(300);

  @override
  Widget build(BuildContext context) {
    print("Tetiklendi");
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: ScreenUtil().setHeight(300),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(275),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16).r,
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: ScreenUtil().setHeight(306),
                    height: ScreenUtil().setHeight(306),
                    child: Image.asset("assets/images/armchair1.png"),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: ScreenUtil().setHeight(55),
            width: double.infinity,
            color: Colors.blue,
            child: Text(
              "Yellow Arm Chair for home. Very comfortable.",
              style: TextStyle(fontSize: TextSize.textSize18),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(65),
            width: double.infinity,
            color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "3999 ₺",
                  style: TextStyle(
                      fontSize: TextSize.textSize24,
                      fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),),
                    backgroundColor: Colors.black,
                    fixedSize: Size.fromHeight(
                      ScreenUtil().setHeight(40),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                        fontSize: TextSize.textSize14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(55),
            width: double.infinity,
            color: Colors.green,
            child: const StarsRating(),
          ),
          Container(
            height: ScreenUtil().setHeight(65),
            width: double.infinity,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
