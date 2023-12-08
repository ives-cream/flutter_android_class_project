import 'package:android_class/page/sneaker_shop/sneaker_shop_homePage.dart';
import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';

class Sneaker_shop extends StatefulWidget {
  const Sneaker_shop({super.key});

  @override
  State<Sneaker_shop> createState() => _Sneaker_shopState();
}

class _Sneaker_shopState extends State<Sneaker_shop> {
  @override
  Widget build(BuildContext context) {
    // Screen Height and Widget
    // 取得手機的寬與高
    final Size screenSize = MediaQuery.of(context).size;
    screenSize.width;
    screenSize.height;
    // 在debug訊息區print出寬與高
    debugPrint(screenSize.height.toString());
    debugPrint(screenSize.width.toString());

    return Scaffold(
      backgroundColor: ColorMatchings.color1_1,
      appBar: AppBar(
        backgroundColor: ColorMatchings.color2_5,
        title: Text("Sneaker shop"),
        leading: IconButton(
          // 換言之，如果該頁面不在第一頁(最上層)時按下(Icons.arrow_back_ios)回到上一頁，是最上層則icon(menu)就打開Drawer
          // https://www.cnblogs.com/wuxiaoyi/p/11976300.html
          icon: ModalRoute.of(context)!.isFirst == true
              ? const Icon(Icons.menu)
              : const Icon(Icons.arrow_back_ios),
          // !ModalRoute.of(context) API獲得當前路由對象；isFirst是否為最底層路由
          onPressed: () {
            // 如果該頁面不在第一頁(最上層)時按下(Icons.arrow_back_ios)回到上一頁，是最上層則icon(menu)就打開Drawer
            if (ModalRoute.of(context)!.isFirst) {
              Scaffold.of(context)
                  .openDrawer(); //手動打開drawer；單擊iconButton打開drawer
            } else {
              Navigator.pop(context);
            }
          },
          // 在HomePage為ChooseBeginnerCoursePage時因為是首頁，因此在ChooseBeginnerCoursePage頁面時在Drawer按下HOME時會進行頁面堆疊(push)，
          //  此時若ChooseBeginnerCoursePage還是munu的icon會很奇怪，因此只要在Home(ChooseBeginnerCoursePage)頁面時
          //  堆疊不等於第一個頁面時就將icon換成arrow_back_ios，是最上層的話顯示menu
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Image.asset(
                "assets/sneaker_shop/nike.png",
                height: 250,
              ),
            ),
            const SizedBox(height: 20.0),
            // title

            // sub title
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Brand new sneakers and custom kicks made with premium quality.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: ColorMatchings.color1_3,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),

            // start now button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sneaker_Shop_HomePage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: ColorMatchings.color2_6,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(25),
                child: const Center(
                  child: Text(
                    "Shop Now",
                    style: TextStyle(
                      color: ColorMatchings.color4_1,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
