import 'package:flutter/material.dart';

import '../project_home_page.dart';
import '../untils/color_matching.dart';

// 選擇Beginner Course頁面
class ChooseBeginnerCoursePage extends StatelessWidget {
  const ChooseBeginnerCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("選擇頁面"),
        backgroundColor: ColorMatchings.color2_5,
        elevation: 0,
        // leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProgrammingBasicApp()),
              );
            },
            child: Text(
              "Programming Basic",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WidgetApp()),
              );
            },
            child: Text(
              "Widget",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListViewApp()),
              );
            },
            child: Text(
              "ListView ",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GridViewApp()),
              );
            },
            child: Text(
              "GridView",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StackApp()),
              );
            },
            child: Text(
              "StackApp",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GestureDetectorApp()),
              );
            },
            child: Text(
              "GestureDetector",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

// 基本語法
class ProgrammingBasicApp extends StatelessWidget {
  const ProgrammingBasicApp({super.key});

  // VARIABLE：you can store different types of info into variable 可以將不同型別的資訊儲存到變數中
  final String name = "Ives Cream";
  final int age = 20;
  final double pi = 3.1415926;
  final bool isBeginner = true; // 變數名稱為 是初學者

  /*
  ＰＲＰＧＲＡＭＭＩＮＧ ＦＵＮＤＡＮＴＡＬＳ 程式基礎

  // BASIC MATH OPERATIONS 基本數學操作
  1 + 1 -> 2, add
  4 - 1 -> 3, subtract
  2 * 3 -> 6, multiply
  8 / 4 -> 2, divide
  9 % 4 -> 1, remind
  5++ ->6, increment by 1
  5-- ->4, decrement by 1

  // COMPARISON OPERATIONS 比較操作
  5 == 5 -> true, EQUAL TO
  2 != 3 -> true, NOT EQUAL TO
  3 > 2 -> true,  GREATER THAN
  3 < 2 -> false, LESS THAN
  5 >= 5 -> true, GREATER OR EQUAL TO
  3 <= 7 -> true, LESS OR EQUAL TO

  // LOGICAL OPERATIONS 邏輯操作
  AND operation：return ture if both sides are true 如果兩者為真，則返回真
  isBeginner && (age < 18) -> return false

  OR operation：return ture if at least one side is true 如果至少一方為真，則返回真
  isBeginner || (age < 18) -> return true

  NOT operation：return the opposite value 返回相反的值

  // ------------------------------------------------------------------------------------

  ＣＯＮＴＲＯＬＦＬＯＷ 流程控制

  if(condition){
    do something
  }

  if(condition){
    do something
  }else if(another condition) {
    do something else
  }

  if(condition){
    do something
  }
  else{
    do something else
  }

  switch (expression){
    case value:
      do something
    break;
    default:
      do something
  }

  for(initialization初始值; condition條件; iteration){
  do something
  }
  imagine you have a box of 10 different colored crayons and you want to draw a circle
  with each one. Instead of saying:
  "Draw a circle with the 1st crayon, then draw a circle with the 2nd crayon, etc ..."

  It's much easier to say:
  "For each crayon in the box, draw a circle."

  while (condition){

  }
  in a for loop, you have to specify the number of times to loop.
  If you don't know how many times to loop, you canuse a while loop to
  keep looping until a certain condition is met.

  break    -> break out of loop
  continue -> skip this current iteration

  // ------------------------------------------------------------------------------------
  ＦＵＮＣＴＩＯＮ ／ ＭＥＴＨＯＤ

  We just looked at some cool blocks of code that gets things done!
  We can organise these blocks of code into functions so that we can
  reuse them easily.

  "void" means that the function returns nothing. Shortly we will look
  at functions that do return something. This one for now just executes
  the code in the function.
  */

  // basic function
  void fun() {
    print("Hello, Ives.");
  }

  //function with parameters
  void funPerson({required String name, int? age}) {
    if (age == null) age = 20;
    print("Hello $name, $age age.");

    // 使用functionName(String name)內的參數只能直接使用參數內容像是fun("Ives")
    // 使用functionName({required String name})內的參數可以使用指定的方式，像key->value，fun(name:"Ives")
    //  required為必須的意思，而?則表示為可空值
    // 使用functionName([String name = "Ives"])內的參數是有預設值，如果使用物件時沒有放置參數就會使用function中的引數，
    //  在使用的過程中要將預設值向右靠；該方法可以看add() function
  }

  //function with return type
  int add(int a, [int b = 5]) {
    return a + b;
  }

  @override
  Widget build(BuildContext context) {
    // ＣＯＮＴＲＯＬＦＬＯＷ
    /*
    String grade = "B";
    if (grade == "A") {
      print("Excellent!");
    } else if (grade == "B") {
      print("Good!");
    } else if (grade == "C") {
      print("Fair!");
    } else if (grade == "D") {
      print("Needs Improvement!");
    } else {
      print("Invalid Grade!");
    }

    switch (grade) {
      case "A":
        print("Excellent!");
        break;
      case "B":
        print("Good!");
        break;
      case "C":
        print("Fair!");
        break;
      case "D":
        print("Needs Improvement!");
        break;
      default:
        print("Invalid Grade!");
    }

    for (int i = 0; i <= 5; i++) {
      if (i == 3) break; // 會直接跳出迴圈OUTPUT：012
      print(i);
    }
    for (int i = 0; i <= 5; i++) {
      if (i == 3) continue; // 會直接跳出迴圈OUTPUT：01245
      print(i);
    }

    int contDown = 5;
    while (contDown > 0) {
      print(contDown);
      contDown--;
    }*/

    // ＦＵＮＣＴＩＯＮ ／ ＭＥＴＨＯＤ
    /*
    fun();
    funPerson(name: "Ives");
    funPerson(name: "Marry", age: 18);
    print(add(5, 6));
    print(add(5));*/

    // ＤＡＴＡＳＴＲＵＣＴＥＲＳ
    /*

    // List：order collections of elements, can have duplicates
    List number = [1, 2, 3];
    //List後面沒有接<資料型態>就代表是dynamic，否則就是List<資料型態> 變數名稱 = [...]
    for (int i = 1; i <= number.length; i++) print(number[i]);

    // SET：underordered collect of unique elements
    Set<String> uniqueNames = {"Mitch", "Sharon", "Vince"};

    // MAP：stored as key-value pairs
    Map user = {"name": "Ives", "age": 20, "height": 170};
    print(user[
        "name"]); //user["name"] -> Ives, user["age"] -> 20, user["height"] -> 170
    */
    // ------------------------------------------------------------------------------------
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Text(
              "ProgrammingBasic",
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF86A8CF),
            ),
          ),
          backgroundColor: const Color(0xFF86A8CF),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.login),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget
class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFBE4D8),
        appBar: AppBar(
          title: ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Text(
              "Widget",
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF86A8CF),
            ),
          ),
          backgroundColor: const Color(0xFF86A8CF),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.login),
            ),
          ],
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: const Color(0xFFBD83B8),
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.all(20),
            // padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30), // 水平, 垂直
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      size: 25,
                      color: Color(0xFFf5D7DB),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Ives Cream",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ListView
class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List names = ["Mitch", "Sharon", "Vince"];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFBE4D8),
        appBar: AppBar(
          title: ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Text(
              "ListView",
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF86A8CF),
            ),
          ),
          backgroundColor: const Color(0xFF86A8CF),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.login),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(
              names[index], //43:43
            ),
          ),
        ),
      ),
    );
  }
}

// GridView
class GridViewApp extends StatelessWidget {
  const GridViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewApp"),
        backgroundColor: const Color(0xFF86A8CF),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: 24,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
        ),
        itemBuilder: (context, index) => Container(
          color: Colors.yellow,
          margin: const EdgeInsets.all(2),
        ),
      ),
    );
  }
}

// Stack
class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewApp"),
        backgroundColor: const Color(0xFF86A8CF),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center, //排列方式
            children: [
              // Big Box
              Container(
                height: 300,
                width: 300,
                color: Colors.blueGrey[800],
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blueGrey[500],
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey[300],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Gesture Detector
class GestureDetectorApp extends StatefulWidget {
  const GestureDetectorApp({super.key});

  @override
  State<GestureDetectorApp> createState() => _GestureDetectorAppState();
}

class _GestureDetectorAppState extends State<GestureDetectorApp> {
  bool _lightIsOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GestureDetector"),
        backgroundColor: ColorMatchings.color2_5,
      ),
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.lightbulb_outline,
                color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
                size: 60,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Toggle light when tapped.
                  _lightIsOn = !_lightIsOn;
                });
              },
              child: Container(
                color: Colors.yellow.shade600,
                padding: const EdgeInsets.all(8),
                // Change button text when light changes state.
                child: Text(_lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
