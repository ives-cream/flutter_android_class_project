import 'package:android_class/Page/class/class_2023_10_18.dart';
import 'package:android_class/Page/class/class_2023_10_25.dart';
import 'package:android_class/Page/class/class_2023_9_13.dart';
import 'package:android_class/page/class/class_2023_11_22/page1.dart';
import 'package:android_class/page/class/class_2023_11_29.dart';
import 'package:flutter/material.dart';

import '../untils/color_matching.dart';

class ChooseClassPage extends StatelessWidget {
  const ChooseClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    var ducati_v4r = Image.asset("assets/ducati_v4r.jpg");

    return Scaffold(
      // backgroundColor: const Color.fromARGB(100, 152, 135, 190),
      appBar: AppBar(
        title: Text("選擇Flutter課程頁面"),
        backgroundColor: ColorMatchings.color2_5,
        elevation: 0,
        leading: IconButton(
          // 換言之，如果該頁面不在第一頁(最上層)時按下(Icons.arrow_back_ios)回到上一頁，是最上層則icon(menu)就打開Drawer
          icon: ModalRoute.of(context)!.isFirst == true
              ? const Icon(Icons.menu)
              : const Icon(Icons.arrow_back_ios),

          onPressed: () {
            // 如果該頁面不在第一頁(最上層)時按下(Icons.arrow_back_ios)回到上一頁，是最上層則icon(menu)就打開Drawer
            if (ModalRoute.of(context)!.isFirst) {
              Scaffold.of(context)
                  .openDrawer(); //手動打開drawer；單擊iconButton打開drawer
            } else {
              Navigator.pop(context);
            }

            // 如果不等於第一頁(最上層)就pop(context)
            //if (!ModalRoute.of(context)!.isFirst) Navigator.pop(context);
          },
          // 在HomePage為ChooseClassPage時因為是首頁，因此在ChooseClassPage頁面時在Drawer按下HOME時會進行頁面堆疊(push)，
          //  此時若ChooseClassPage還是menu的icon會很奇怪，因此只要在Home(ChooseClassPage)頁面時
          //  堆疊不等於第一個頁面時就將icon換成arrow_back_ios，是最上層的話顯示menu
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/1200x/df/8d/43/df8d43ccadb61ac10e747612d6c7335f.jpg"),
            // https://4kwallpapers.com/images/wallpapers/bmw-s-1000-rr-sports-bikes-2023-5k-1536x2048-8696.jpg
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: const Text(
                        'class 2023 9 13',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Class_2023_9_13(title: "Class 2023 9 13"),
                          ),
                        );
                      },
                    ),
                    ElevatedButton(
                      child: const Text(
                        'class 2023 10 18',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Class_2023_10_18(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: const Text(
                        'class 2023 10 25',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Class_2023_10_25(),
                          ),
                        );
                      },
                    ),
                    ElevatedButton(
                      child: const Text(
                        'class 2023 11 22',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Class_2023_11_22_Page1(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: const Text(
                        'class 2023 11 29',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Class_2023_11_29(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
