import 'package:flutter/material.dart';

import '../../page/choose_class_page.dart';

class Class_2023_10_25 extends StatelessWidget {
  const Class_2023_10_25({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("class 2023 10 25"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: IconButton(
              icon: Icon(Icons.home, size: 30),
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => ChooseClassPage()));
              },
            ),
          ),
          TextButton(
            child: const Text("Home"),
            onPressed: () {},
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.home),
            label: const Text("home"),
          ),
          Container(
            width: 300,
            height: 200,
            child: Image.asset("assets/sneaker_shop/nike.png"),
          )
        ],
      ),
    );
  }
}
