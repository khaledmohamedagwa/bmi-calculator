import 'package:bmi_calculator/component/bottom_button.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import 'input_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {required this.result,
      required this.isMale,
      required this.age,
      required this.height});
  final double result;
  final bool isMale;
  final int age;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: Text("BMI RESULT"),
        centerTitle: true,
        backgroundColor: backGroundColor,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: activeContainerColor,
              borderRadius: BorderRadius.circular(containerBorderRadius),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "YOUR BMI: ${result.round()}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  Text(
                    "AGE : $age",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  Text(
                    "GENDER : ${isMale ? "MALE" : "FEMALE"}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  Text(
                    "HEIGHT : ${height.round()}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  )
                ],
              ),
            ),
          )),
          BottomButton(
              buttonLabel: "RECALCULATE",
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => InputScreen()));
              })
        ],
      ),
    );
  }
}
