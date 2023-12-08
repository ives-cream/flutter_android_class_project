import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';

import 'page2.dart';

class Class_2023_11_22_Page1 extends StatelessWidget {
  const Class_2023_11_22_Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorMatchings.color2_5,
      appBar: AppBar(
        title: Text("class 2023 11 22 Page1"),
        backgroundColor: ColorMatchings.color2_5,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            "Go to the class 2023 11 22 page2.",
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
              context,
              "/lib/page/class/class_2023_11_22/page2.dart",
              arguments: Page2Data(10, "顯示第二頁"),
            );
          },
        ),
      ),
    );
  }
}
