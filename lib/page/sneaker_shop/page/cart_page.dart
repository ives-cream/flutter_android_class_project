import 'package:android_class/page/sneaker_shop/components/cart_item.dart';
import 'package:android_class/page/sneaker_shop/components/models/shoe.dart';
import 'package:android_class/page/sneaker_shop/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  // 購物車
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // heading
            const Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length, // 等於個人鞋子的數量
                itemBuilder: (context, index) {
                  // get individual shoe 個人鞋子
                  Shoe individual = value.getUserCart()[index];

                  // return the cart item
                  return CartItem(shoe: individual);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
