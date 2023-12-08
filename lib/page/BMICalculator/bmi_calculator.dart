// https://www.codementor.io/@nitishk72/flutter-bmi-calculator-app-1dlnjlhy6e
import 'package:flutter/material.dart';

import '../../untils/color_matching.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  // Here I'm going to declare a variable for our custom radio
  int currentindex = 0;
  String result = "";
  // Let's declare the inputController to get the inputs value
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  // Initialization 初始化
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // Screen Height and Widget
    final Size screenSize = MediaQuery.of(context).size;
    screenSize.width;
    screenSize.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI BCalculator",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
        backgroundColor: ColorMatchings.color2_5,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SizedBox(
        height: screenSize.height,
        // Size screenSize = MediaQuery.of(context).screenSize; screenSize.width; screenSize.height;
        child: SingleChildScrollView(
          //SingleChildScrollView 讓child Widget 可以在頁面滾動的Widget
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    radioButton("Man", Color(0xFF3355070), 0),
                    const SizedBox(width: 20),
                    radioButton("Woman", Color(0xFFB56576), 1),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // Now let's create our input from
                // Height
                const Text(
                  "Your Height in Cm :",
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: heightController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Your height in Cm",
                    filled: true,
                    fillColor: Color(0xFFADCBD7),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none),
                    // enabledBorder: OutlineInputBorder()
                  ),
                ),

                const SizedBox(height: 20.0),

                // Weight
                const Text(
                  "Your Weight in Kg :",
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: weightController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Your weight in Kg",
                    filled: true,
                    fillColor: Color(0xFFADCBD7),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none),
                    // enabledBorder: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20.0),
                //   Now let's add the calculate button
                Container(
                  width: double.infinity, // 填滿父類別的寬(/高)
                  height: 50.0,

                  child: FloatingActionButton(
                    backgroundColor: Color(0xFFA8E8F9),
                    onPressed: () {
                      double height = double.parse(heightController.value.text);
                      double weight = double.parse(weightController.value.text);
                      calculationBmi(height, weight);
                    },
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        color: Color(0xFF06142E),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),
                Text(
                  "Your BMI is :",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50.0),
                Container(
                  width: double.infinity,
                  child: Text(
                    "$result",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // clear the Height and Weight input controller's data and then clear the view of Calculator
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 觸發事件
          setState(() {
            // 在此處需要加上setState通知整個app要進行某些動作；更新 widget 狀態並觸發 widget 樹重建的主要方式
            // https://medium.com/@anslemAnsy/is-setstate-enough-for-your-flutter-app-6fae44585d71
            // clear the controller data
            heightController.clear();
            weightController.clear();
            result = "";
          });
        },
        child: Icon(Icons.clear),
      ),
    );
  }

  void calculationBmi(double height, double weight) {
    double finalResult = weight / ((height / 100) * (height / 100));
    String bmi = finalResult.toStringAsFixed(2);
    setState(() {
      result = bmi;
    });
  }

  // and here i'm going to declare a function change the index on button pressed
  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  // Now I will create a new custom widget
  Widget radioButton(String value, Color color, index) {
    return Expanded(
        child: Container(
      // I will add some margins to the container
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      // let's add some height to the button
      height: 80.0,

      child: FloatingActionButton(
        // Now I want the color of my button change in function of it's selected or not
        // the main color that we will define otherwise make it Color(0xFFADCBD7)
        backgroundColor: currentindex == index ? color : Color(0xFFADCBD7),
        // let's add some round border
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        onPressed: () {
          // when we click the button the current index will have the value of the button's index
          changeIndex(index);
        },
        // I will apply some modification to the button text color
        child: Text(
          value,
          style: TextStyle(
            color: currentindex == index ? Colors.white : color,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ));
  }
}
