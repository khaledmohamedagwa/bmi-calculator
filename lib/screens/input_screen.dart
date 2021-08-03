import 'dart:math';
import 'package:bmi_calculator/component/bottom_button.dart';
import 'package:bmi_calculator/component/counter_container.dart';
import 'package:bmi_calculator/component/gender_container.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constant.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool isMale = true;
  int weight = 55;
  int age = 20;
  double height = 120;
  late double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor: backGroundColor,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                GenderContainer(
                  genderLabel: "MALE",
                  icon: FontAwesomeIcons.mars,
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  color: isMale ? activeContainerColor : inActiveContainerColor,
                ),
                SizedBox(width: 20),
                GenderContainer(
                  genderLabel: "FEMALE",
                  icon: FontAwesomeIcons.venus,
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  color: isMale ? inActiveContainerColor : activeContainerColor,
                ),
              ],
            ),
          )),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: activeContainerColor,
                borderRadius: BorderRadius.circular(containerBorderRadius),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT", style: containerLabelStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("${height.round()}", style: numberStyle),
                      Text("cm", style: containerLabelStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderThumbShape(enabledThumbRadius: 30.0)),
                    child: Slider(
                      min: 80,
                      max: 220,
                      value: height,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                CounterContainer(
                  firstHeroTag: 3,
                  secondeHeroTag: 4,
                  counterContainerLabel: "WEIGHT",
                  decrementOnPressed: () {
                    setState(() {
                      weight--;
                    });
                  },
                  incrementOnPressed: () {
                    setState(() {
                      weight++;
                    });
                  },
                  counterValue: weight,
                ),
                SizedBox(
                  width: 20,
                ),
                CounterContainer(
                  firstHeroTag: 1,
                  secondeHeroTag: 2,
                  counterContainerLabel: "AGE",
                  decrementOnPressed: () {
                    setState(() {
                      age--;
                    });
                  },
                  incrementOnPressed: () {
                    setState(() {
                      age++;
                    });
                  },
                  counterValue: age,
                ),
              ],
            ),
          )),
          BottomButton(
            buttonLabel: "CALCULATE",
            onPressed: () {
              result = weight / pow(height / 100, 2);
              // Navigator.of(context).pushReplacementNamed( '/resultScreen',arguments: ResultScreen(result: bmiResult,isMale: isMale,age: age,));
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        result: result,
                        age: age,
                        isMale: isMale,
                        height: height,
                      )));
            },
          )
        ],
      ),
    );
  }
}
