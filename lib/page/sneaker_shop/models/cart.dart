import 'package:android_class/page/sneaker_shop/components/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier {
  // Provider 共享資源
  // ChangeNotifierProvider 負責監聽模型變化並通知Consumer(收到通知負責重構UI)
  // ChangeNotifier 初始化的共享裝置元件；若被定義為ChangeNotifier可以訂用它的狀態變化
  // notifyListeners() 向監聽器發送通知，當模型狀態發生改變並且需要更新UI時可以呼叫該方法

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Zoom FREAK",
      price: "236",
      description: "The forward-thinking design of his latest signature shoe.",
      imagePath: "assets/sneaker_shop/zoomfreak.png",
    ),
    Shoe(
      name: "Air Jordans",
      price: "220",
      description:
          "You've got the and the speed-lace up in shoes that enhance what you bring to the court.",
      // if use '', You've must be use 'You\'ve'
      imagePath: "assets/sneaker_shop/air_jordan_1_low.png",
    ),
    Shoe(
      name: "KD Treys",
      price: "240",
      description:
          "A secure midfoot strap is suite for scoring binges and defensive ",
      // if use '', You've must be use 'You\'ve'
      imagePath: "assets/sneaker_shop/kdtrery.png",
    ),
    Shoe(
      name: "Kyrie 6",
      price: "190",
      description:
          "Bouncy cushioning is paired with soft yet supportive from for ",
      // if use '', You've must be use 'You\'ve'
      imagePath: "assets/sneaker_shop/kyrie.png",
    ),
  ]; //鞋子的品項

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item form cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  int shoeLength() {
    return shoeShop.length;
  }
}
