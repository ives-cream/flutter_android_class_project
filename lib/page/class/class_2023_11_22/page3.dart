import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';

import 'page2.dart';

class Class_2023_11_22_Page3 extends StatelessWidget {
  const Class_2023_11_22_Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorMatchings.color2_6,
      appBar: AppBar(
        title: Text("class 2023 11 22 Page3"),
        backgroundColor: ColorMatchings.color2_5,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            "Go back to the class 2023 11 22 page 2.",
            style: TextStyle(fontSize: 15),
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Class_2023_11_22_Page2(),
              ),
            );
          },
        ),
      ),
    );
  }
}
