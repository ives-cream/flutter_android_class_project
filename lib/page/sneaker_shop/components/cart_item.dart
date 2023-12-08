import 'package:android_class/page/sneaker_shop/components/models/shoe.dart';
import 'package:android_class/page/sneaker_shop/models/cart.dart';
import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  // 購物車中的一個一個區塊的購物品項
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove item form Cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemToCart(widget.shoe);
    showDialog(
      // 顯示對話框
      context: context, // 用於尋找對話方塊的導航器和主題
      builder: (context) => AlertDialog(
        // 基本對話框(警告對話框)
        title: Text(
          "Removed for your Card!",
          style: TextStyle(fontSize: 23.0),
        ), // 基本對話框的標題
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorMatchings.color2_2,
          borderRadius: BorderRadius.circular(8.0)),
      margin: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name), //標題
        subtitle: Text(widget.shoe.price), //副標題，標題下方的文字
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
