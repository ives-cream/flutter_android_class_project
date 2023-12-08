import 'package:android_class/page/sneaker_shop/components/bottom_nav_bar.dart';
import 'package:android_class/page/sneaker_shop/page/cart_page.dart';
import 'package:android_class/page/sneaker_shop/page/shop_page.dart';
import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';

class Sneaker_Shop_HomePage extends StatefulWidget {
  Sneaker_Shop_HomePage({super.key});

  @override
  State<Sneaker_Shop_HomePage> createState() => _Sneaker_Shop_HomePageState();
}

// Sneaker Shop app https://www.youtube.com/watch?v=UcwsuZP071Y
class _Sneaker_Shop_HomePageState extends State<Sneaker_Shop_HomePage> {
  // this selected index is to control the bottom nav bar
  int selectedIndex = 0;

  // this method will update our selected index
  //  if using setState have to using StatefulWidget, can't use StatelessWidget,
  //  because we are changing the state of the content, not only UI
  void navigateButtonBar(int index) {
    setState(() {});
    selectedIndex = index;
  }

  // pages to display
  final List<Widget> _page = [
    // shop page
    const ShopPage(),
    // 該處的Widget為ListView圖片以上的區域

    // cart page
    const CartPage(),
    // 該處的Widget為ListView圖片以下的區域
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Snack Shop"),
        backgroundColor: ColorMatchings.color2_5,
        leading: IconButton(
          // 換言之，如果該頁面不在第一頁(最上層)時按下(Icons.arrow_back_ios)回到上一頁，是最上層則icon(menu)就打開Drawer
          icon: !ModalRoute.of(context)!.isFirst == true
              ? const Icon(Icons.arrow_back_ios)
              : const Icon(Icons.menu),

          onPressed: () {
            // 如果該頁面不在第一頁(最上層)時按下(Icons.arrow_back_ios)回到上一頁，是最上層則icon(menu)就打開Drawer
            if (!ModalRoute.of(context)!.isFirst) {
              Navigator.pop(context);
            } else {
              Scaffold.of(context)
                  .openDrawer(); //手動打開drawer；單擊iconButton打開drawer
            }
            // 如果不等於第一頁(最上層)就pop(context)
            //if (!ModalRoute.of(context)!.isFirst) Navigator.pop(context);
          },
          // 在HomePage為ChooseBeginnerCoursePage時因為是首頁，因此在ChooseBeginnerCoursePage頁面時在Drawer按下HOME時會進行頁面堆疊(push)，
          //  此時若ChooseBeginnerCoursePage還是munu的icon會很奇怪，因此只要在Home(ChooseBeginnerCoursePage)頁面時
          //  堆疊不等於第一個頁面時就將icon換成arrow_back_ios，是最上層的話顯示menu
        ),
        actions: [
          // open this page drawer, it will not affect the homepage
          Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu));
            },
          ),
        ],
      ),
      bottomNavigationBar: Sneaker_Shop_Navigator_bar(
        onTabChange: (index) => navigateButtonBar(index),
      ),
      drawer: Drawer(
        backgroundColor: ColorMatchings.color3_6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // logo
                DrawerHeader(
                  child: Image.asset(
                    "assets/sneaker_shop/nike.png",
                    color: ColorMatchings.color4_1,
                  ),
                ),
                // Separator
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    //分隔線
                    color: ColorMatchings.color1_1,
                  ),
                ),
                // other page
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: ColorMatchings.color1_1,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: ColorMatchings.color1_1,
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: ColorMatchings.color1_1,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _page[selectedIndex],
      backgroundColor: ColorMatchings.color1_2,
    );
  }
}
