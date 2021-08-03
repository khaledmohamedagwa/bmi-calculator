import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonLabel, required this.onPressed});
  final String buttonLabel;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bottomButtonColor,
      height: bottomButtonHeight,
      width: width,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          buttonLabel,
          style: BottomButtonLabelStyle,
        ),
      ),
    );
  }
}
