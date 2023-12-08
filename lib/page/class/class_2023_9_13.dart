import 'package:flutter/material.dart';

class Class_2023_9_13 extends StatefulWidget {
  //練習建立檔案，並更改title background
  const Class_2023_9_13({super.key, required this.title});
  final String title;

  @override
  State<Class_2023_9_13> createState() => _Class_2023_9_13State();
}

class _Class_2023_9_13State extends State<Class_2023_9_13> {
  int _counter = 0;

  void Add() {
    setState(() {
      _counter++;
    });
  }

  void Minus() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Add();
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 15,
                ),
                FloatingActionButton(
                  onPressed: () {
                    Minus();
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
            const Column(
              children: [
                SizedBox(height: 10),
                Text(
                  "我愛自己\n把中心放在自己身上",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      //.underline 底線，.lineThrough 文字中間加入刪除線，overline 文字 上方加一條線
                      fontWeight: FontWeight.normal,
                      //文字粗細 normal 正常，bold 粗體，w100~w900 w100最細
                      backgroundColor: Colors.white70),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
