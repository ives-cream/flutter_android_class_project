import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';

import 'page1.dart';

class Class_2023_11_22_Page2 extends StatelessWidget {
  const Class_2023_11_22_Page2({super.key});

  @override
  Widget build(BuildContext context) {
    // Receive incoming messages
    Page2Data? data = ModalRoute.of(context)?.settings.arguments as Page2Data?;
    int? num = data?.num;
    String? str = data?.str;

    return Scaffold(
      backgroundColor: ColorMatchings.color2_5,
      appBar: AppBar(
        title: Text("class 2023 11 22 Page2"),
        backgroundColor: ColorMatchings.color2_5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$num $str",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              child: Text(
                "Go back to the class 2023 11 22 page 1.",
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Class_2023_11_22_Page1(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text(
                "Go to the class 2023 11 22 page 3.",
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Class_2023_11_22_Page2(),
                //   ),
                // );
                Navigator.pushNamed(
                    context, "/lib/page/class/class_2023_11_22/page3.dart");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page2Data {
  int num;
  String str;
  Page2Data(this.num, this.str);
}
