// HomePage；該頁面為最底層架構，所看到的頁面是顯示在該架構之上
import 'package:android_class/Page/BMICalculator/bmi_calculator.dart';
import 'package:android_class/Page/beginner_course.dart';
import 'package:android_class/Page/to_do_app/to_do_app.dart';
import 'package:android_class/page/choose_class_page.dart';
import 'package:android_class/page/sneaker_shop/sneaker_shop.dart';
import 'package:android_class/page/social_media/auth/login_or_register.dart';
import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this keeps track of the current page to display
  int _selectedIndex = 1;

  // this method updates the new selected index
  void _navigateButtomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // the pages we page in our app；using in bottom Navigation Bar change Page
  final List _pages = [
    ChooseClassPage(),
    Sneaker_shop(),
    // ChangeNotifierProvider()
    ToDoApp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 側邊選單；把它寫在最底層頁面，而其他所看到的頁面是顯示在該架構上層
      drawer: Drawer(
        backgroundColor: ColorMatchings.color1_3,
        child: ListView(
          // 如果不使用ListView的話會造成該Drawer的使用範圍只有在該頁面的大小而已，若超出的話會overflow；
          children: [
            Column(
              // 要用Column的原因是要讓DrawerHeader與other Card button排列起來更好看，若沒有它的話會造成格式錯亂
              children: [
                // common to pla ce a drawer header here
                DrawerHeader(
                  child: Text(
                    "側邊選單",
                    style: TextStyle(
                      fontSize: 30,
                      color: ColorMatchings.color3_6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Image.asset("assets/m4.jpg"),
                  ),
                ),
                // home page list tile
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                  child: Card(
                    color: ColorMatchings.color1_1,
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Icon(Icons.home),
                      ),
                      title: Text(
                        "H O M E",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        // Navigator.pushNamed(context, "/HomePage"); //檔名
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                    ),
                  ),
                ),
                // Sneaker_shop
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                  child: Card(
                    color: ColorMatchings.color1_1,
                    child: ListTile(
                      leading: Container(
                        width: 35,
                        child: Transform.flip(
                          flipX: true, // 水平翻轉
                          // flipY: true, // 垂直翻轉
                          child: Image.asset(
                            "assets/sneaker_shop/sneaker.png",
                          ),
                        ),
                      ),
                      title: Text(
                        "Sneaker Shop",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      //後方加一個 ">" icon
                      // trailing: Icon(
                      //   Icons.arrow_forward_ios,
                      //   color: Colors.lightBlueAccent,
                      // ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sneaker_shop(),
                            // builder: (context) => ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // Social Media App
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                  child: Card(
                    color: ColorMatchings.color1_1,
                    child: ListTile(
                      leading: Container(
                        height: 30,
                        child: Image.asset("assets/social_media/login.png"),
                      ),
                      title: Text(
                        "Social Media",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginOrRegister(), //AuthPage
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // To Do App
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                  child: Card(
                    color: ColorMatchings.color1_1,
                    child: ListTile(
                      leading: Icon(Icons.list),
                      title: Text(
                        "To Do List",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ToDoApp(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // BMI
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                  child: Card(
                    color: ColorMatchings.color1_1,
                    child: ListTile(
                      leading: Icon(Icons.trending_up),
                      title: Text(
                        "BMI Calculator",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BMICalculator()));
                      },
                    ),
                  ),
                ),
                // Gesture Detector
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                  child: Card(
                    color: ColorMatchings.color1_1,
                    child: ListTile(
                      leading: Icon(Icons.lightbulb_outline),
                      title: Text(
                        "Gesture Detector",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GestureDetectorApp()));
                      },
                    ),
                  ),
                ),
                //
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                  child: Card(
                    color: ColorMatchings.color1_1,
                    child: ListTile(
                      title: Text(
                        "C H O O S E P A G E",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // Navigator.pushNamed(context, "/HomePage"); //檔名
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseBeginnerCoursePage()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // Bottom Navigation Bar；label 標籤
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorMatchings.color1_4,
        currentIndex: _selectedIndex, //當前要顯示的頁面選項
        onTap: _navigateButtomBar, //單擊Bottom Navigation Bar的icon時『改變』顯示頁面
        items: [
          // BottomNavigationBar https://hackmd.io/@wayne900204/H12hI2uWt/%2FebVrpfdiR_m-N5MMqddDzA
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: ColorMatchings.color3_6,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 25,
              child: Transform.flip(
                flipX: true, // 水平翻轉
                // flipY: true, // 垂直翻轉
                child: Image.asset(
                  "assets/sneaker_shop/sneaker.png",
                ),
              ),
            ),
            label: "Sneaker Shop",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: ColorMatchings.color3_6,
            ),
            label: "To Do List",
          ),
        ],
      ),
    );
  }
}
