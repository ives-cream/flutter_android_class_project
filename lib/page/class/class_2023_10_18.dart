import 'package:flutter/material.dart';

class Class_2023_10_18 extends StatefulWidget {
  const Class_2023_10_18({super.key});

  @override
  State<Class_2023_10_18> createState() => _Class_2023_10_18State();
}

class _Class_2023_10_18State extends State<Class_2023_10_18> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var fun = (int i) {
      return i * i;
    };
    return Scaffold(
      backgroundColor: Color(0xFFFFE8D6),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("class 2023 10 18"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/apple.jpg"),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(' times:', style: TextStyle(fontSize: 20)),
                const SizedBox(width: 10),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter = 0;
                    });
                  },
                  child: const Text(
                    "歸零",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter = fun(_counter).toInt();
                    });
                  },
                  child: const Text(
                    "平方",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                // ElevatedButton(onPressed: onPressed, child: child)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
