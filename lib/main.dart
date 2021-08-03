import 'package:bmi_calculator/screens/input_screen.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiCalculator());
}
class BmiCalculator extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: "BMI CALCULATOR",
      home: InputScreen(),
    //   routes: <String, WidgetBuilder> {
    // '/resultScreen': (BuildContext context) => ResultScreen(,),
    // },

    );
  }
}
