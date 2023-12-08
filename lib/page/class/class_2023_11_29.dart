import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';

class Class_2023_11_29 extends StatefulWidget {
  Class_2023_11_29({super.key});

  @override
  State<Class_2023_11_29> createState() => _Class_2023_11_29State();
}

bool lightOrDark1 = true;

class _Class_2023_11_29State extends State<Class_2023_11_29> {
  final ValueNotifier<String> _selectedItem = ValueNotifier('');

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[200, 700, 100];

    return Scaffold(
      appBar: AppBar(
        title: Text("class 2023 11 29"),
        backgroundColor: ColorMatchings.color2_5,
        actions: [
          IconButton(
            color: lightOrDark1 == true
                ? ColorMatchings.color2_6
                : ColorMatchings.color1_1,
            icon:
                Icon(lightOrDark1 == true ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              setState(() {
                lightOrDark1 = !lightOrDark1;
              });
            },
            // Switch(
            //   value: lightOrDark,
            //   onChanged: (state) {
            //     setState(() {
            //       lightOrDark = state;
            //     });
            //   },
            // ),
          ),
        ],
      ),
      body: Container(
        color: lightOrDark1 == true
            ? ColorMatchings.color4_1
            : ColorMatchings.color3_6,
        /*
          child: Expanded( //不要使用Expanded
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 250,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(
                        child: Text(
                      'Entry ${entries[index]}',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold),
                    )),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
        */
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: Moth.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.grey[300],
                margin: EdgeInsets.only(bottom: 15.0),
                child: ListTile(
                  title: Text(
                    Moth[index],
                  ), //Moth[index]
                  onTap: () {
                    setState(() {});
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

List<String> Moth = [
  "January",
  "February",
  "March",
  "April",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December",
];
