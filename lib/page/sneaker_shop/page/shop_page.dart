import 'package:android_class/page/sneaker_shop/components/models/shoe.dart';
import 'package:android_class/page/sneaker_shop/components/shoe_tile.dart';
import 'package:android_class/page/sneaker_shop/models/cart.dart';
import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  // ShopPage顯示的內容中到ListView之上，ListView的地方(Hot Picks之下)就是ShoeTile
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    // 監聽(讀取)共享數據的變化；存取widget tree中最近的資料提供者。能夠檢索相關數據並追蹤更新

    // alert the user,shoe successfully added
    showDialog(
      // 顯示對話框
      context: context, // 用於尋找對話方塊的導航器和主題
      builder: (context) => AlertDialog(
        // 基本對話框(警告對話框)
        title: Text("Successfully added!"), // 基本對話框的標題
        content: Text("Check your cart."), // 基本對話框的內文
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        //SingleChildScrollView
        children: [
          // search bar
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: ColorMatchings.color1_1,
                  borderRadius: BorderRadius.circular(8)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(
                      color: ColorMatchings.color2_1,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: ColorMatchings.color2_1,
                  ),
                ],
              ),
            ),
          ),

          // message
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              "everyone files.. some fly longer then others",
              style: TextStyle(
                color: ColorMatchings.color2_1,
              ),
            ),
          ),

          // hot picks
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          /*
          // Image測試
          // Container(
          // height: 100,
          //   child: Image.asset("assets/sneaker_shop/nike.png"),
          // ),
          */

          //list of shoe for sale

          Expanded(
            child: ListView.builder(
              itemCount: value.shoeLength(), // shoeShop length
              scrollDirection: Axis.horizontal, // 將ListView從直向改為橫向
              // scrollDirection: Axis.vertical, // 將ListView為直向(預設)
              itemBuilder: (context, index) {
                // get a shoe from shop list
                Shoe shoe = value.getShoeList()[index]; //是多筆shoe的list

                /*
                // 此處只能指定一筆數據
                // create a shoe
                Shoe(
                  name: 'Air Jordan',
                  description: 'cool shoe',
                  price: '240',
                  iagePath: 'assets/sneaker_shop/air_jordan_1_low.jpeg',
                );*/

                // return the shoe
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe), //shoe is individual shoe
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 15.0, left: 25.0, right: 25.0, bottom: 10.0),
            child: Divider(
              color: ColorMatchings.color1_1,
            ),
          )
        ],
      ),
    );
  }
}
