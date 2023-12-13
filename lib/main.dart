// https://www.youtube.com/watch?v=HQ_ytw58tC4
import 'package:android_class/firebase_options.dart';
import 'package:android_class/page/social_media/theme/dark_mode.dart';
import 'package:android_class/page/social_media/theme/light_mode.dart';
import 'package:android_class/project_home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'page/class/class_2023_11_22/page1.dart';
import 'page/class/class_2023_11_22/page2.dart';
import 'page/class/class_2023_11_22/page3.dart';
import 'page/sneaker_shop/models/cart.dart';

void main() async {
  // init the hive；使用一個Hive本機資料庫，讓手機頁面關掉重開時資料還留著
  // https://blog.devgenius.io/the-ultimate-guide-to-using-hive-in-flutter-5f5cada88841
  await Hive.initFlutter();
  // 這是要讓 "To Do List App 的 list 在滑掉頁面時在重新進到頁面時還存在紀錄"
  // open a box
  var box = await Hive.openBox("mybox");

  // Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  // print("主程式運行");
  runApp(App());
  // print("主程式碼運行結束");
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

// var lightOrDark = LightOrDark();

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // ChangeNotifierProvider 負責監聽模型變化並通知Consumer(收到通知負責重構UI)
      // ChangeNotifier 向監聽器發送通知，狀態改變時使用notifyListeners()；若被定義為ChangeNotifier可以訂用它的狀態變化
      // notifyListeners() 當模型發生改變並且需要更新UI時可以呼叫該方法

      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        // child: MaterialApp(
        // 將右上角一個Debug的東西去掉
        debugShowCheckedModeBanner: false,
        // 淺色模式
        theme: lightMode,
        // // 深色模式
        darkTheme: darkMode,
        // theme: lightOrDark.lightOrDark ? lightMode : darkMode,
        home: HomePage(),

        // Define the routes, because we use Navigate.pushName combine page routes
        initialRoute: '/',
        routes: {
          '/lib/page/class/class_2023_11_22/page1.dart': (context) =>
              const Class_2023_11_22_Page1(),
          '/lib/page/class/class_2023_11_22/page2.dart': (context) =>
              const Class_2023_11_22_Page2(),
          '/lib/page/class/class_2023_11_22/page3.dart': (context) =>
              const Class_2023_11_22_Page3(),
        },
      ),
    );
  }
}

class LightOrDark {
  bool lightOrDark = true;
}

// 基本框架練習
// import 'package:flutter/material.dart';
//
// import 'choose_class_page.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         brightness: Brightness.dark,
//         // colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
//         useMaterial3: true,
//       ),
//       home: const ChooseClassPage(),
//     );
//   }
// }

// ------------------------------------------------------------------------------------

/*
// 基本架構
import 'package:flutter/material.dart';
var app = MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Class 2023 10 4"),
    ),
    body: const Column(
      children: [
        Center(
          child: Text(
            "文字",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        )
      ],
    ),
  ),
);
void main() {
  runApp(app);
}
//基本架構
// var app = MaterialApp(
//   debugShowCheckedModeBanner: true,
//   home: Scaffold(
//     appBar: AppBar(
//       title: Text("class 2023 10 4"),
//     ),
//     body: const Center(
//       child: Text(
//         "Class",
//         style: TextStyle(fontSize: 20, color: Colors.blueGrey),
//       ),
//     ),
//   ),
// );
// void main() {
//   runApp(app);
// }
*/
