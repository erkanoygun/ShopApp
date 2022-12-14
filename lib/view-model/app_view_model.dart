import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:shop_app/model/product_model.dart';
import '../core/constant/app/app_constant.dart';

class AppViewModel extends ChangeNotifier {
  List<Product> products = [];
  List<String> favoritesList = [];
  final String loremIpsum =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
  List cartList = [];
  int totalPrice = 0;
  int selectedIndex = 0;
  final _random = Random();
  List<Map> randomArmChairList = [
    {"color": "Yellow", "imgPathName": "armchair1", "weight": 60,"price" : 3999},
    {"color": "Purple", "imgPathName": "armchair2", "weight": 80,"price" : 4999}
  ];

  List<Product> getProducts() {
    products.clear();
    for (int i = 0; i <= 12; i++) {
      Map element =
          randomArmChairList[_random.nextInt(randomArmChairList.length)];
      Product product = Product.randomCreate(
        name: "${element["color"]} Arm Chair",
        description: loremIpsum,
        imgPath: "${AppConstant.imagePath}${element["imgPathName"]}.png",
        weight: element["weight"],
        price: element["price"],
        id: "fakeId_$i",
        quantitiy: 1,
      );

      products.add(product);
    }

    return products;
  }

  void changeSelecktPage(int index) {
    if (index != selectedIndex) {
      selectedIndex = index;
    }
    notifyListeners();
  }

  void addFavoritesList(String id) {
    if (favoritesList.contains(id)) {
      favoritesList.remove(id);
    } else {
      favoritesList.add(id);
    }

    notifyListeners();
  }

  void addCartList(Product product) {
    if(!cartList.contains(product)){
      cartList.add(product);
      getTotalPrice();
    }
    notifyListeners();
  }

  void addQuantitiy(String id) {
    for (Product i in cartList) {
      if (i.id == id) {
        i.quantitiy = i.quantitiy + 1;
        getTotalPrice();
        break;
      }
    }
    notifyListeners();
  }

  void deleteQuantitiy(String id) {
    for (Product i in cartList) {
      if (i.id == id) {
        if (i.quantitiy == 1) {
          cartList.removeWhere((element) => element.id == id);
          getTotalPrice();
          break;
        } else {
          i.quantitiy = i.quantitiy - 1;
          getTotalPrice();
        }
      }
    }
    notifyListeners();
  }

  void getTotalPrice(){
    totalPrice = 0;
    for(Product i in cartList){
      totalPrice += (i.price * i.quantitiy);
    }
  }
}
