import 'package:android_class/page/sneaker_shop/components/models/shoe.dart';
import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  // ShopPage顯示的內容中ListView中的地方(Hot Picks之下)就是ShoeTile
  Shoe shoe;
  void Function()? onTap;
  // 建立一個function是用於才放單擊(onTap)後所要做的事情，
  //  平常只能放一個單擊後的動作，但建立function的話可以在使用時應映當時狀況做不同的事件

  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: ColorMatchings.color4_1,
        borderRadius: BorderRadius.circular(12),
        // border: Border.all(
        //   width: 2,
        //   color: ColorMatchings.color1_1,
        // ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          ClipRRect(
            // 將widget裁剪為圓角矩形
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),

          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: ColorMatchings.color4_3, fontSize: 14),
            ),
          ),

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // shoe name
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    // price
                    Text(
                      '\$' + shoe.price,
                      style: TextStyle(
                        color: ColorMatchings.color1_3,
                      ),
                    ),
                  ],
                ),
                // plus button

                // button to add to cart
                GestureDetector(
                  // GestureDetector 手勢識別的組件
                  onTap: onTap,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorMatchings.color2_6,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(
                        Icons.add,
                        color: ColorMatchings.color1_2,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
